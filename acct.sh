#!/usr/bin/env bash -eo pipefail

ACCT=`whoami`

# change default shell back to bash
chsh -s /bin/bash $ACCT

# Generate keypair for use with github
ssh-keygen -o -a 100 -t ed25519 -f $HOME/.ssh/id_ed25519 -C "colin@jchenry.me"
