#!/bin/bash -eu

source ../script_globals.bash

psswrd=`gpg --quiet --gen-random --armor 0 24 | tail -1`

echo $psswrd | tee $JENKINS_KEYSTORE_PASS_FILE

cd secrets
./create_secrets.bash $psswrd
cd ..

docker build -t js-jenkins:latest .
