#!/bin/bash
# Install GIT

sudo apt-get install -y git

# Cloning GIT
git clone -b monolith https://github.com/express42/reddit.git
cd reddit && bundle install

# Start service
puma -d
ps aux | grep puma
