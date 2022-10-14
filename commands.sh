#!/bin/bash

echo "This is library of commands to copy and paste. Don't execute"
exit 1

# Build an image tagged 'test-nginx'
sudo docker build -t test-nginx

# Run a container named 'test-nginx-container' from a image tagged 'test-nginx'
sudo docker run --name test-nginx-container -p 8080:80 -d test-nginx

curl -i -H "Host: hoge.localdomain" http://localhost:8080
curl -i -H "Host: fuga.localdomain" http://localhost:8080
