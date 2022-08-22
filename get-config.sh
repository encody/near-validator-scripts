#!/usr/bin/env bash

cp ~/.near/config.json ~/.near/config-old.json
wget -O ~/.near/config.json https://s3-us-west-1.amazonaws.com/build.nearprotocol.com/nearcore-deploy/shardnet/config.json
