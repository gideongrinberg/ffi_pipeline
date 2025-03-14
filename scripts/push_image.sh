#! /usr/bin/env bash

aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws/u5g4f9t5
docker buildx build --platform linux/amd64 -t gideongrinberg/pipeline .
docker tag gideongrinberg/pipeline:latest public.ecr.aws/u5g4f9t5/gideongrinberg/pipeline:latest
docker push public.ecr.aws/u5g4f9t5/gideongrinberg/pipeline:latest