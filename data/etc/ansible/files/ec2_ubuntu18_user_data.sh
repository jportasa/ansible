#!/bin/bash

pubkey=$(aws secretsmanager get-secret-value --secret-id ansible-ssh --query SecretString --output text)

authfile="/root/.ssh/authorized_keys"
sudo echo "$pubkey" >> $authfile

sudo apt install python -y
