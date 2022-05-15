#!/usr/bin/env bash -eo pipefail

ln -s ~/.vscode/settings.json ~/Library/Application Support/Code/User/settings.json

while read p; do
    code --install-extension $p
done <extensions.txt