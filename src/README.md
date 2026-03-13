# Automated Nginx Deployment & Reverse Proxy 

Welcome to Day 6 of our 30-Day DevOps Challenge! This repository contains the configuration files and automation scripts used to deploy a custom Nginx web server and reverse proxy on an Amazon Linux EC2 instance.

##  Project Structure

* `/src` - Contains our custom `index.html` frontend file.
* `/config` - Contains our `nginx.conf` file, which handles traffic routing.
* `/scripts` - Contains `setup.sh`, a bash script that fully automates the installation, directory creation, and configuration of Nginx.

##  Architecture Highlights

* **Web Server (Port 80):** Serves our custom static HTML website directly from `/usr/share/nginx/html/example.com/`.
* **Reverse Proxy (Port 8080):** Captures incoming traffic on port 8080 and securely forwards it to our internal backend application at `34.227.11.229`.
* **Future Scope:** SSL/HTTPS configuration block is prepared, but temporarily shifted to Port 80 for this development phase while we await a registered custom domain.

##  How to Deploy

1. Launch an **Amazon Linux EC2 instance**.
2. Open **Ports 80** and **8080** in your AWS Security Group.
3. Clone this repository to your instance:
   ```bash
   git clone [https://github.com/sagarpatade/day6-nginx-deployment.git](https://github.com:sagarpatade/day6-nginx-deployment.git)

4.  Run the deployment script:

Bash
cd day6-nginx-deployment/scripts
chmod +x setup.sh
./setup.sh

5.Access the server's Public IPv4 address in a web browser!