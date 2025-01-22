#!/bin/bash

# Install required packages
yum install httpd git -y

# Start and enable Apache HTTP server
systemctl start httpd
systemctl enable httpd

# Navigate to the Apache web directory
cd /var/www/html || exit

# Clone the specified repository
REPO_URL="https://github.com/sai99516/terraform-3-tier-architecture.git"
REPO_NAME="terraform-3-tier-architecture"

if git clone "$REPO_URL"; then
  echo "Repository cloned successfully."
  
  # Move the contents of the repository to the current directory
  mv "$REPO_NAME"/* .
  echo "Contents moved successfully."
else
  echo "Failed to clone the repository. Please check the URL or network connection."
  exit 1
fi
