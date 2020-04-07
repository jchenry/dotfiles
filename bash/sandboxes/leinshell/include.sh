#!/usr/bin/env bash

#includes for go zsh config
function leinshell() {
  mkdir -p ~/.m2
    __docker_bash "leinshell" "/project" \
                "-v $SANDBOXES/leinshell/profiles.clj:/home/$USER/.lein/profiles.clj" \
                "-v ~/.m2:/home/$USER/.m2" \
                "-P=true"
}
