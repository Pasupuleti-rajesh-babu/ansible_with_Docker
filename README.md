# Ansible_with_Docker

# Ansible Playbook for Docker Configuration and Web Server Deployment

## Introduction

Ansible is an open-source automation tool used for IT tasks such as configuration management, application deployment, and provisioning. It allows users to define tasks in YAML format within playbooks, which are then executed sequentially.

Docker is a tool designed to make it easier to create, deploy, and run applications by using containers. Containers allow developers to package up an application with all its dependencies and deploy it as one package.

## Prerequisites

Before running the playbook, ensure that you have:

- Installed Ansible on the Manager Node
  
pip3 install ansible


- Updated the Ansible inventory file (`/etc/ansible/hosts`) with the IP address of the managed nodes

## Playbook Execution

1. **Creating a Yum repository**

 Run the following command to configure Yum repository:

ansible-playbook yumconf.yml


2. **Configuring Yum repository for Docker**

Run the following command to configure Yum repository for Docker:


ansible-playbook dockercfg.yml


3. **Starting Docker services**

Run the following command to start Docker services:


ansible-playbook dockersvc.yml


4. **Building Docker Image and copying HTML files**

Run the following command to build Docker image and copy HTML files:

ansible-playbook dockerfile.yml


5. **Launching the Web Server**

Run the following command to launch the web server container:

ansible-playbook webserver.yml



## Dockerfile and HTML Code

The Dockerfile and HTML code used for configuring the web server are available in this repository.

## Troubleshooting

If you encounter any issues during execution, please ensure that:
- The managed nodes are reachable from the Manager Node.
- The necessary permissions are set for executing the playbook.

## Contributing

Feel free to contribute to this playbook by submitting pull requests or opening issues.


