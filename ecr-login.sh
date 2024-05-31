#!/usr/bin/env bash

echo "Logging into Amazon Elastic Container Registry"
aws ecr get-login-password --region us-east-1 \
| docker login \
    --username AWS \
    --password-stdin 166248964328.dkr.ecr.us-east-1.amazonaws.com
