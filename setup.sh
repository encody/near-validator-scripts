#!/usr/bin/env bash

set -f

echo "NEAR validator set-up script"

echo "Adding environment variables to .bashrc..."
echo 'source $HOME/.validatorrc' >> .bashrc
echo "Add the validator environment variables to the current shell:"
echo "	. ~/.validatorrc"

SCHEDULE='0 */6 * * *'
JOB="$SCHEDULE HOME=$HOME $(readlink -f ./ping.sh) >>$PING_LOG 2>&1"
echo "Creating ping cron job..."
echo "\"$JOB\" >> crontab"
(crontab -l ; echo $JOB ; ) | crontab -

echo "Done."

