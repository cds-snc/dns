#!/bin/zsh

# AWS cli
echo -e "complete -C /usr/local/bin/aws_completer aws" >> /home/vscode/.zshrc

# Terraform
echo -e "alias tf='terraform'" >> /home/vscode/.zshrc
echo -e "complete -F __start_terraform tf" >> /home/vscode/.zshrc
terraform -install-autocomplete

. /home/vscode/.zshrc
