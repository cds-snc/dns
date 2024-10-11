#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

#
# Retrieve A, CNAME and NS records from Terraform files.
#

# Directory containing Terraform files
TERRAFORM_DIR="$1"

# Domains to extract records for
DOMAINS=("cds-snc.ca" "canada.ca")

# Function to extract records by type
extract_records() {
  local file=$1
  local record_type=$2
  local domains_regex=$(IFS="|"; echo "${DOMAINS[*]}")

  awk -v type="$record_type" -v domains="$domains_regex" '
    /resource "aws_route53_record"/ {in_resource = 1; record_name = ""; record_type = ""; next}
    in_resource && /name *=/ {record_name = $3; gsub(/"/, "", record_name); next}
    in_resource && /type *=/ {record_type = $3; next}
    in_resource && /}/ {
        in_resource = 0;
        if (record_type == "\"" type "\"" && record_name ~ "(" domains ")$") {
            print record_name
        }
        next
    }
  ' "$file"
}

# Loop through all Terraform files in the directory
for file in "$TERRAFORM_DIR"/*.tf; do
  extract_records "$file" "A"
  extract_records "$file" "CNAME"
  extract_records "$file" "NS"
done