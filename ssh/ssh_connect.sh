#!/usr/bin/env bash
# Define variables
private_key="/root/.ssh/school"
server_ip="52.204.144.215"
username="ubuntu"

# Check if the private key file exists
if [ ! -f "/root/.ssh/school" ]; then
    echo "Error: Private key file "/root/.ssh/school" not found."
    exit 1
fi

# Set correct permissions for private key
chmod 600 "$private_key"

# SSH into the server
ssh_command="ssh -i $private_key $username@$server_ip"
$ssh_command

# Check the exit status of the SSH command
if [ $? -ne 0 ]; then
    echo "Error: SSH connection failed."
    exit 1
fi

