#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker build --file 1.11/8.0/Dockerfile -t 166248964328.dkr.ecr.eu-west-1.amazonaws.com/cimg-clojure:1.11.3-openjdk-8.0 -t 166248964328.dkr.ecr.eu-west-1.amazonaws.com/cimg-clojure:1.11-openjdk-8.0 --platform linux/amd64 .
docker build --file 1.11/8.0/node/Dockerfile -t 166248964328.dkr.ecr.eu-west-1.amazonaws.com/cimg-clojure:1.11.3-openjdk-8.0-node -t 166248964328.dkr.ecr.eu-west-1.amazonaws.com/cimg-clojure:1.11-openjdk-8.0-node --platform linux/amd64 .
docker build --file 1.11/8.0/browsers/Dockerfile -t 166248964328.dkr.ecr.eu-west-1.amazonaws.com/cimg-clojure:1.11.3-openjdk-8.0-browsers -t 166248964328.dkr.ecr.eu-west-1.amazonaws.com/cimg-clojure:1.11-openjdk-8.0-browsers --platform linux/amd64 .
docker build --file 1.11/11.0/Dockerfile -t 166248964328.dkr.ecr.eu-west-1.amazonaws.com/cimg-clojure:1.11.3-openjdk-11.0 -t 166248964328.dkr.ecr.eu-west-1.amazonaws.com/cimg-clojure:1.11-openjdk-11.0 --platform linux/amd64 .
docker build --file 1.11/11.0/node/Dockerfile -t 166248964328.dkr.ecr.eu-west-1.amazonaws.com/cimg-clojure:1.11.3-openjdk-11.0-node -t 166248964328.dkr.ecr.eu-west-1.amazonaws.com/cimg-clojure:1.11-openjdk-11.0-node --platform linux/amd64 .
docker build --file 1.11/11.0/browsers/Dockerfile -t 166248964328.dkr.ecr.eu-west-1.amazonaws.com/cimg-clojure:1.11.3-openjdk-11.0-browsers -t 166248964328.dkr.ecr.eu-west-1.amazonaws.com/cimg-clojure:1.11-openjdk-11.0-browsers --platform linux/amd64 .
docker build --file 1.11/17.0/Dockerfile -t 166248964328.dkr.ecr.eu-west-1.amazonaws.com/cimg-clojure:1.11.3-openjdk-17.0 -t 166248964328.dkr.ecr.eu-west-1.amazonaws.com/cimg-clojure:1.11-openjdk-17.0 --platform linux/amd64 .
docker build --file 1.11/17.0/node/Dockerfile -t 166248964328.dkr.ecr.eu-west-1.amazonaws.com/cimg-clojure:1.11.3-openjdk-17.0-node -t 166248964328.dkr.ecr.eu-west-1.amazonaws.com/cimg-clojure:1.11-openjdk-17.0-node --platform linux/amd64 .
docker build --file 1.11/17.0/browsers/Dockerfile -t 166248964328.dkr.ecr.eu-west-1.amazonaws.com/cimg-clojure:1.11.3-openjdk-17.0-browsers -t 166248964328.dkr.ecr.eu-west-1.amazonaws.com/cimg-clojure:1.11-openjdk-17.0-browsers --platform linux/amd64 .
docker build --file 1.11/21.0/Dockerfile -t 166248964328.dkr.ecr.eu-west-1.amazonaws.com/cimg-clojure:1.11.3-openjdk-21.0 -t 166248964328.dkr.ecr.eu-west-1.amazonaws.com/cimg-clojure:1.11-openjdk-21.0 --platform linux/amd64 .
docker build --file 1.11/21.0/node/Dockerfile -t 166248964328.dkr.ecr.eu-west-1.amazonaws.com/cimg-clojure:1.11.3-openjdk-21.0-node -t 166248964328.dkr.ecr.eu-west-1.amazonaws.com/cimg-clojure:1.11-openjdk-21.0-node --platform linux/amd64 .
docker build --file 1.11/21.0/browsers/Dockerfile -t 166248964328.dkr.ecr.eu-west-1.amazonaws.com/cimg-clojure:1.11.3-openjdk-21.0-browsers -t 166248964328.dkr.ecr.eu-west-1.amazonaws.com/cimg-clojure:1.11-openjdk-21.0-browsers --platform linux/amd64 .
