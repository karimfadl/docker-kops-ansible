FROM centos:latest

MAINTAINER "KarimFadl" <kareemfadl10@gmail.com>

ENV AWS_ACCESS_KEY_ID="xxxxxxxxxxxxxxxxxx"

ENV AWS_SECRET_ACCESS_KEY="xxxxxxxxxxxxxxxxxx"

RUN rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm

#Normal updates
RUN yum -y update

# tools
RUN yum -y install wget curl git vim net-tools unzip sudo

#Install Ansible
RUN yum -y install ansible

#Copy Ansible Playbook
COPY . /srv/
