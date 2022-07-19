#!/usr/bin/env bash

curl -s -d '{"jsonrpc": "2.0", "method": "validators", "id": "dontcare", "params": [null]}' -H 'Content-Type: application/json' 127.0.0.1:3030 | jq ".result.current_validators[] | select(.account_id | contains (\"$POOL_ID\"))"
