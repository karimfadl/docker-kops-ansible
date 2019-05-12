# docker-kops-ansible

This repository contains tooling for deploying Kubernetes cluster in Amazon AWS using the Kops tool by through Ansible Playbook inside Centos 7 Container.


1. Install Docker in your Local Machine.

https://docs.docker.com/install/


2. Access your AWS account from console and create The following

-IAM user with Admin permission "save your secrect key and access key"

-Add "Hosted zone" by Route53 service to add your domain.



3. Clone The repo to  your Local Machine : https://github.com/karimfadl/docker-kops-ansible

-Change The following  Vars to match your infrastructure in "group_vars/all" [Access Key - Secret Key - Bucket Name - cluster_name - DNS Zones]

-Change The following  Vars to match your infrastructure in "Dockerfile" [Access Key - Secret Key]

-Inside repo Build Your Docker image Through this command for example: docker build -t karimfadl/kops:v1 . 

-Create Container from this image through this command for example: docker run --name=kops -it karimfadl/kops:v1 /bin/bash

-Run your Ansible Script inside the Container : cd /srv/  >> ansible-playbook create-k8scluster.yaml 

-After finish you can check your AWS account and check the Cluster Resources

-You can delete the Cluster inside the container : cd /srv/ >> ansible-playbook delete-k8scluster.yaml
