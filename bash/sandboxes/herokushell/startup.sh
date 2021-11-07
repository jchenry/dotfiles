#!/usr/bin/env sh
useradd $HOST_USER --home /home/$HOST_USER --gid $HOST_GID --uid $HOST_UID --shell /bin/bash
echo "$HOST_USER:pw" | chpasswd
chown $HOST_USER:$HOST_GID /home/$HOST_USER

su $HOST_USER
cd /project