#!/bin/bash

sudo yum install docker git -y
sudo systemctl start docker
sudo systemctl enable docker 
git clone https://github.com/gideongrinberg/ffi_pipeline && cd ffi_pipeline
git switch local && git pull origin local
sudo docker build -t pipeline . && sudo docker run -p 8888:8888 --rm pipeline