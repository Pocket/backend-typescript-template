#!/bin/bash
set -e

# Add host entries to match local docker development names.
echo "Adding service hosts records"

# These should match the services you are creating in your docker-compose file
# This is required for containers to talk to each other
declare -a arr=("mysql" "localstack" "snowplow")

for i in "${arr[@]}"; do
    echo 127.0.0.1 "$i" | sudo tee -a /etc/hosts
done
