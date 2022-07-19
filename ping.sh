#!/usr/bin/env bash

echo "***PING START***"

date
/usr/bin/near call $POOL_ACCOUNT_ID ping '{}' --accountId $ACCOUNT_ID --gas=300000000000000

echo "***PING END***"

