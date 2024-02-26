#!/bin/bash

# Update package list and install dependencies
sudo apt-get update
sudo apt-get install -y unzip curl jq

# Download and install Consul
CONSUL_VERSION="1.11.0"
wget "https://releases.hashicorp.com/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip"
unzip "consul_${CONSUL_VERSION}_linux_amd64.zip"
sudo mv consul /usr/local/bin/

# Clean up downloaded zip file
rm "consul_${CONSUL_VERSION}_linux_amd64.zip"
