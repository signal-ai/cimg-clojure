#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail
docker push 166248964328.dkr.ecr.us-east-1.amazonaws.com/cimg-clojure:1.12-openjdk-8.0
docker push 166248964328.dkr.ecr.us-east-1.amazonaws.com/cimg-clojure:1.12.0-openjdk-8.0
docker push 166248964328.dkr.ecr.us-east-1.amazonaws.com/cimg-clojure:1.12-openjdk-8.0-node
docker push 166248964328.dkr.ecr.us-east-1.amazonaws.com/cimg-clojure:1.12.0-openjdk-8.0-node
docker push 166248964328.dkr.ecr.us-east-1.amazonaws.com/cimg-clojure:1.12-openjdk-8.0-browsers
docker push 166248964328.dkr.ecr.us-east-1.amazonaws.com/cimg-clojure:1.12.0-openjdk-8.0-browsers
docker push 166248964328.dkr.ecr.us-east-1.amazonaws.com/cimg-clojure:1.12-openjdk-11.0
docker push 166248964328.dkr.ecr.us-east-1.amazonaws.com/cimg-clojure:1.12.0-openjdk-11.0
docker push 166248964328.dkr.ecr.us-east-1.amazonaws.com/cimg-clojure:1.12-openjdk-11.0-node
docker push 166248964328.dkr.ecr.us-east-1.amazonaws.com/cimg-clojure:1.12.0-openjdk-11.0-node
docker push 166248964328.dkr.ecr.us-east-1.amazonaws.com/cimg-clojure:1.12-openjdk-11.0-browsers
docker push 166248964328.dkr.ecr.us-east-1.amazonaws.com/cimg-clojure:1.12.0-openjdk-11.0-browsers
docker push 166248964328.dkr.ecr.us-east-1.amazonaws.com/cimg-clojure:1.12-openjdk-17.0
docker push 166248964328.dkr.ecr.us-east-1.amazonaws.com/cimg-clojure:1.12.0-openjdk-17.0
docker push 166248964328.dkr.ecr.us-east-1.amazonaws.com/cimg-clojure:1.12-openjdk-17.0-node
docker push 166248964328.dkr.ecr.us-east-1.amazonaws.com/cimg-clojure:1.12.0-openjdk-17.0-node
docker push 166248964328.dkr.ecr.us-east-1.amazonaws.com/cimg-clojure:1.12-openjdk-17.0-browsers
docker push 166248964328.dkr.ecr.us-east-1.amazonaws.com/cimg-clojure:1.12.0-openjdk-17.0-browsers
docker push 166248964328.dkr.ecr.us-east-1.amazonaws.com/cimg-clojure:1.12-openjdk-21.0
docker push 166248964328.dkr.ecr.us-east-1.amazonaws.com/cimg-clojure:1.12.0-openjdk-21.0
docker tag 166248964328.dkr.ecr.us-east-1.amazonaws.com/cimg-clojure:1.12.0-openjdk-21.0 166248964328.dkr.ecr.us-east-1.amazonaws.com/cimg-clojure:1.12.0
docker tag 166248964328.dkr.ecr.us-east-1.amazonaws.com/cimg-clojure:1.12-openjdk-21.0 166248964328.dkr.ecr.us-east-1.amazonaws.com/cimg-clojure:1.12
docker push 166248964328.dkr.ecr.us-east-1.amazonaws.com/cimg-clojure:1.12
docker push 166248964328.dkr.ecr.us-east-1.amazonaws.com/cimg-clojure:1.12.0
docker push 166248964328.dkr.ecr.us-east-1.amazonaws.com/cimg-clojure:1.12-openjdk-21.0-node
docker push 166248964328.dkr.ecr.us-east-1.amazonaws.com/cimg-clojure:1.12.0-openjdk-21.0-node
docker tag 166248964328.dkr.ecr.us-east-1.amazonaws.com/cimg-clojure:1.12.0-openjdk-21.0-node 166248964328.dkr.ecr.us-east-1.amazonaws.com/cimg-clojure:1.12.0-node
docker tag 166248964328.dkr.ecr.us-east-1.amazonaws.com/cimg-clojure:1.12-openjdk-21.0-node 166248964328.dkr.ecr.us-east-1.amazonaws.com/cimg-clojure:1.12-node
docker push 166248964328.dkr.ecr.us-east-1.amazonaws.com/cimg-clojure:1.12-node
docker push 166248964328.dkr.ecr.us-east-1.amazonaws.com/cimg-clojure:1.12.0-node
docker push 166248964328.dkr.ecr.us-east-1.amazonaws.com/cimg-clojure:1.12-openjdk-21.0-browsers
docker push 166248964328.dkr.ecr.us-east-1.amazonaws.com/cimg-clojure:1.12.0-openjdk-21.0-browsers
docker tag 166248964328.dkr.ecr.us-east-1.amazonaws.com/cimg-clojure:1.12.0-openjdk-21.0-browsers 166248964328.dkr.ecr.us-east-1.amazonaws.com/cimg-clojure:1.12.0-browsers
docker tag 166248964328.dkr.ecr.us-east-1.amazonaws.com/cimg-clojure:1.12-openjdk-21.0-browsers 166248964328.dkr.ecr.us-east-1.amazonaws.com/cimg-clojure:1.12-browsers
docker push 166248964328.dkr.ecr.us-east-1.amazonaws.com/cimg-clojure:1.12-browsers
docker push 166248964328.dkr.ecr.us-east-1.amazonaws.com/cimg-clojure:1.12.0-browsers
