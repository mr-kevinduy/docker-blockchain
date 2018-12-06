#!/usr/bin/env bash

# Install ubuntu package
apt-get update
apt-get install -y --force-yes \
  git \
  wget \
  curl \
  nano \
  vim \
  zip \
  unzip

# Install make
apt-get update
apt-get install -y --force-yes \
  build-essential

# Install Nodejs
curl -sL https://deb.nodesource.com/setup_10.x | bash -
apt-get install -y nodejs
npm install -g \
  yarn \
  @vue/cli \
  truffle \
  firebase-tools

# Clean up
apt-get clean && apt-get autoclean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
