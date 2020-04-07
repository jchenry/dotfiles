#!/usr/bin/env sh
# groupadd --gid $HOST_GID $HOST_USER
useradd $HOST_USER --home /home/$HOST_USER --gid $HOST_GID --uid $HOST_UID --shell /bin/bash
echo "$HOST_USER:pw" | chpasswd
# chown $HOST_USER:$HOST_USER /home/$HOST_USER

#setup lein for this user
cp -r /root/.lein/* /home/$HOST_USER/.lein/
chown -R $HOST_USER:$HOST_USER /home/$HOST_USER/.lein
# /usr/sbin/sshd
su $HOST_USER

cd /project