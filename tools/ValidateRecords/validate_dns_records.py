import os
import glob
import re
import dns.resolver
from tabulate import tabulate
import requests
import threading
import itertools
import sys
import time

TERRAFORM_DIR = os.path.join(os.path.dirname(__file__), '../../terraform')
RECORD_TYPES = ['A', 'CNAME', 'AAAA']
HEADERS = ["DOMAIN", "TYPE", "FILE"]

# Regex to match resource blocks for DNS records in Terraform
RESOURCE_REGEX = re.compile(r'resource\s+"[^"]*record[^"]*"\s+"([^"]+)"\s*{([^}]*)}', re.MULTILINE | re.DOTALL)
DOMAIN_REGEX = re.compile(r'name\s*=\s*"([^"]+)"')
TYPE_REGEX = re.compile(r'type\s*=\s*"([^"]+)"')


def find_dns_records():
    records = []
    for tf_file in glob.glob(os.path.join(TERRAFORM_DIR, '*.tf')):
        with open(tf_file, 'r') as f:
            content = f.read()
            for match in RESOURCE_REGEX.finditer(content):
                block = match.group(2)
                name_match = DOMAIN_REGEX.search(block)
                type_match = TYPE_REGEX.search(block)
                if name_match and type_match:
                    record_type = type_match.group(1)
                    if record_type in RECORD_TYPES:
                        records.append((name_match.group(1), record_type, re.sub(r'^.*/', '', tf_file)))
    # print(tabulate(records, HEADERS))
    return records


def validate_record(domain):
    # Perform HTTPS request to the domain
    try:
        response = requests.get(f'https://{domain}', timeout=5)
        return True, response.status_code, ""
    except requests.exceptions.RequestException as req_err:
        return False, "UNKNOWN", type(req_err).__name__

def main():
    records = find_dns_records()
    valid_records = []
    orphaned_records = []

    # A little spinner since HTTPS validation takes so long
    spinner_running = True
    def spinner():
        for c in itertools.cycle(['♪┌|∵|┘♪', '♪└|∵|┐♪']):
            if not spinner_running:
                break
            sys.stdout.write(f'\rValidating records... {c}')
            sys.stdout.flush()
            time.sleep(0.5)
        sys.stdout.write('\r')

    t = threading.Thread(target=spinner)
    t.start()

    for domain, record_type, tf_file in records:
        valid, status_code, err = validate_record(domain)
        if valid and status_code != 404:
            valid_records.append((domain, record_type, tf_file, str(status_code)))
        else:
            orphaned_records.append((domain, record_type, tf_file, str(status_code), str(err)))

    spinner_running = False
    t.join()

    if valid_records:
        # sort by status code
        valid_records.sort(key=lambda x: x[3])
        print('Valid DNS records found:')
        print(tabulate(valid_records, headers=["DOMAIN", "TYPE", "FILE", "STATUS"]))
    if orphaned_records:
        # sort by error
        orphaned_records.sort(key=lambda x: x[4])
        print('Orphaned DNS records found:')
        print(tabulate(orphaned_records, headers=["DOMAIN", "TYPE", "FILE", "STATUS", "ERROR"]))
    else:
        print('No orphaned DNS records found.')

if __name__ == '__main__':
    main()
