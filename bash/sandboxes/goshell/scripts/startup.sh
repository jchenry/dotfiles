#!/usr/bin/env sh
# groupadd --gid $HOST_GID $HOST_USER
groupadd docker

useradd $HOST_USER --home /home/$HOST_USER --gid $HOST_GID --uid $HOST_UID --shell /bin/bash
echo "$HOST_USER:pw" | chpasswd
# chown $HOST_USER:$HOST_USER /home/$HOST_USER

# /usr/sbin/sshd
su $HOST_USER
