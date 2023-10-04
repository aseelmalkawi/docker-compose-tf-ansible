This is Spring Boot application with a database, containerized usign docker.

Using Terraform, an AWS infrastructure on an EC2 and RSA key pair are made to host the application. 

Ansible configures the created EC2 remotely to install docker and other necessary dependencies, then start the docker compose service to deploy the application.
