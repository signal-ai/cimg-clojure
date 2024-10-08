#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker build --file 1.12/8.0/Dockerfile -t 166248964328.dkr.ecr.us-east-1.amazonaws.com/cimg-clojure:1.12.0-openjdk-8.0 -t 166248964328.dkr.ecr.us-east-1.amazonaws.com/cimg-clojure:1.12-openjdk-8.0 --platform linux/amd64 .
docker build --file 1.12/8.0/node/Dockerfile -t 166248964328.dkr.ecr.us-east-1.amazonaws.com/cimg-clojure:1.12.0-openjdk-8.0-node -t 166248964328.dkr.ecr.us-east-1.amazonaws.com/cimg-clojure:1.12-openjdk-8.0-node --platform linux/amd64 .
docker build --file 1.12/8.0/browsers/Dockerfile -t 166248964328.dkr.ecr.us-east-1.amazonaws.com/cimg-clojure:1.12.0-openjdk-8.0-browsers -t 166248964328.dkr.ecr.us-east-1.amazonaws.com/cimg-clojure:1.12-openjdk-8.0-browsers --platform linux/amd64 .
docker build --file 1.12/11.0/Dockerfile -t 166248964328.dkr.ecr.us-east-1.amazonaws.com/cimg-clojure:1.12.0-openjdk-11.0 -t 166248964328.dkr.ecr.us-east-1.amazonaws.com/cimg-clojure:1.12-openjdk-11.0 --platform linux/amd64 .
docker build --file 1.12/11.0/node/Dockerfile -t 166248964328.dkr.ecr.us-east-1.amazonaws.com/cimg-clojure:1.12.0-openjdk-11.0-node -t 166248964328.dkr.ecr.us-east-1.amazonaws.com/cimg-clojure:1.12-openjdk-11.0-node --platform linux/amd64 .
docker build --file 1.12/11.0/browsers/Dockerfile -t 166248964328.dkr.ecr.us-east-1.amazonaws.com/cimg-clojure:1.12.0-openjdk-11.0-browsers -t 166248964328.dkr.ecr.us-east-1.amazonaws.com/cimg-clojure:1.12-openjdk-11.0-browsers --platform linux/amd64 .
docker build --file 1.12/17.0/Dockerfile -t 166248964328.dkr.ecr.us-east-1.amazonaws.com/cimg-clojure:1.12.0-openjdk-17.0 -t 166248964328.dkr.ecr.us-east-1.amazonaws.com/cimg-clojure:1.12-openjdk-17.0 --platform linux/amd64 .
docker build --file 1.12/17.0/node/Dockerfile -t 166248964328.dkr.ecr.us-east-1.amazonaws.com/cimg-clojure:1.12.0-openjdk-17.0-node -t 166248964328.dkr.ecr.us-east-1.amazonaws.com/cimg-clojure:1.12-openjdk-17.0-node --platform linux/amd64 .
docker build --file 1.12/17.0/browsers/Dockerfile -t 166248964328.dkr.ecr.us-east-1.amazonaws.com/cimg-clojure:1.12.0-openjdk-17.0-browsers -t 166248964328.dkr.ecr.us-east-1.amazonaws.com/cimg-clojure:1.12-openjdk-17.0-browsers --platform linux/amd64 .
docker build --file 1.12/21.0/Dockerfile -t 166248964328.dkr.ecr.us-east-1.amazonaws.com/cimg-clojure:1.12.0-openjdk-21.0 -t 166248964328.dkr.ecr.us-east-1.amazonaws.com/cimg-clojure:1.12-openjdk-21.0 --platform linux/amd64 .
docker build --file 1.12/21.0/node/Dockerfile -t 166248964328.dkr.ecr.us-east-1.amazonaws.com/cimg-clojure:1.12.0-openjdk-21.0-node -t 166248964328.dkr.ecr.us-east-1.amazonaws.com/cimg-clojure:1.12-openjdk-21.0-node --platform linux/amd64 .
docker build --file 1.12/21.0/browsers/Dockerfile -t 166248964328.dkr.ecr.us-east-1.amazonaws.com/cimg-clojure:1.12.0-openjdk-21.0-browsers -t 166248964328.dkr.ecr.us-east-1.amazonaws.com/cimg-clojure:1.12-openjdk-21.0-browsers --platform linux/amd64 .
