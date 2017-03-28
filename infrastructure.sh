#!/bin/bash

# Exit 1 if any command fails
set -e

# Source the AWS credentials script
echo Sourcing the AWS credentials script
source $HOME/awscreds

# =========================================
# RVM Setup
# =========================================
# Source the RVM config script
echo Sourcing the RVM configuration
source $HOME/.bashrc
source $HOME/.profle

# Use ruby 2.4.0
echo Changing to Ruby-2.4.0
rvm use 2.4.0

# =========================================
# Update Bundle
# =========================================
echo Updating required gems...
bundle install

# =========================================
# Running Apply Task
# =========================================
#echo Setting up infrastructure...
#rake apply[$environment]