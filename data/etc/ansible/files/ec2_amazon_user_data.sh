#!/bin/bash

pubkey=$(aws secretsmanager get-secret-value --region us-east-1 --secret-id ansible-ssh --query SecretString --output text)

authfile="/home/ec2-user/.ssh/authorized_keys"
sudo echo "$pubkey" >> $authfile

sudo yum install python -y

