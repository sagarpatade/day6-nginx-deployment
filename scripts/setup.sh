#!/bin/bash

# 1. Update Amazon Linux packages
sudo dnf update -y

# 2. Install Nginx
sudo dnf install nginx -y

# 3. Created the specific directory 
sudo mkdir -p /usr/share/nginx/html/example.com/

# 4. Copy your HTML file into that new directory
sudo cp ../src/index.html /usr/share/nginx/html/example.com/index.html

# 5. Back up the default Nginx config, just in case
sudo mv /etc/nginx/nginx.conf /etc/nginx/nginx.conf.backup

# 6. Copy custom config file into the core Nginx folder
sudo cp ../config/nginx.conf /etc/nginx/nginx.conf

# 7. Start and enable Nginx
sudo systemctl start nginx
sudo systemctl enable nginx

# 8. Reload Nginx to apply custom settings
sudo systemctl reload nginx

echo "Custom Nginx configuration and deployment complete!"