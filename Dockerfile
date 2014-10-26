FROM ubuntu:14.04

MAINTAINER Rahul CFI

RUN apt-get update

RUN apt-get install -y build-essential git wget supervisor

# Pre-requisites for a python/pip environment
RUN apt-get install -y python python-dev python-setuptools python-pip libmysqlclient-dev
RUN easy_install pip

# Mount our code directory
ADD . /app

WORKDIR /app

# Install the other packages
RUN pip install -r requirements.txt
