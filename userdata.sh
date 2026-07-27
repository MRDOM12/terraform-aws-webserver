#!/bin/bash

# Update package list
apt update -y

# Install Nginx
apt install -y nginx

# Enable and start Nginx
systemctl enable nginx
systemctl start nginx

# Create custom web page
cat <<EOF > /var/www/html/index.html
<!DOCTYPE html>
<html>
<head>
    <title>Terraform AWS Web Server</title>
</head>
<body style="font-family: Arial; text-align:center; margin-top:100px;">
    <h1>🚀 Terraform AWS Web Server</h1>
    <h2>Provisioned using Terraform</h2>
    <p>This EC2 instance was automatically configured using Terraform user_data.</p>
    <hr>
    <p>Project: Terraform AWS Web Server</p>
</body>
</html>
EOF
