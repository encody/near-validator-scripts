#!/usr/bin/env -S bash -l

echo "***PING START***"

source $HOME/.validatorrc
echo "NEAR_ENV=$NEAR_ENV POOL_ACCOUNT_ID=$POOL_ACCOUNT_ID ACCOUNT_ID=$ACCOUNT_ID"

date
/usr/bin/near call $POOL_ACCOUNT_ID ping '{}' --accountId $ACCOUNT_ID --gas=300000000000000

echo "***PING END***"

