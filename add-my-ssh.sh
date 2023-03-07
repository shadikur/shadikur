#!/bin/bash
# Get the public key from a variable
PUBLIC_KEY="ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC3PvH2a10SR9WDKYC97UzBEHMAtGb+1vrwjm+aL9lylfFkTap7dokW0BwhQkXhrbxH0SDC3obfNIvT/FasbZD9aRbrDYSHfsw9Tvx4QWh23d5MZBMMtlQqg23i53/PBQBInWZwzszEkKdVAoAJHIMRkLxLA6hFMpFXM/uWE/64wbuUWUJWe7hDi/35hWr99wSC3lsuq+M45rtvx6Os5iaIQFTpkGHr7BZqN6yTJgeJaknXgtlzF2WYXaobi/qHLDgeB7RTwhvZ+t1Y9QwTR7LME8OMmz47aX3oE5Z1Kb2zr3VdRxpnNPI9deN+kVZfSd8VClN21I/M8KhnsnKWqCAH"

# Create ssh directory in the user's home directory if it does not exist
mkdir -p ~/.ssh

# Append the public key to the authorized_keys file
echo "$PUBLIC_KEY" >> ~/.ssh/authorized_keys

# Set appropriate permissions to the file and directory
chmod 700 ~/.ssh
chmod 600 ~/.ssh/authorized_keys

# Exit with a success message
echo "Public SSH key added successfully."
exit 0
