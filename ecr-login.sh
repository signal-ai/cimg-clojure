#!/usr/bin/env bash

echo "Logging into Amazon Elastic Container Registry"
aws ecr get-login-password \
| docker login \
    --username AWS \
    --password-stdin 166248964328.dkr.ecr.eu-west-1.amazonaws.com
