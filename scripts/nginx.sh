#!/bin/bash

dnf update -y

dnf install nginx -y

systemctl enable nginx
systemctl start nginx

cat > /usr/share/nginx/html/index.html <<EOF
<!DOCTYPE html>
<html>
<head>
    <title>Terraform EC2</title>
</head>
<body>
    <h1>Nginx Installed Successfully</h1>
    <h2>Environment: DEV</h2>
    <p>Provisioned using Terraform User Data</p>
    <p>Hostname: $(hostname)</p>
</body>
</html>
EOF