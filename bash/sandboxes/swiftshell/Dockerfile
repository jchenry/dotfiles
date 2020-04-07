#jchenry/swiftshell
#
# Shell for Swift development
# learning the hard way

FROM swift:4.2
MAINTAINER Colin Henry <colin@jchenry.me>

RUN apt-get update && \
    apt-get install -y openssh-server  wget 


#sshd setup - https://docs.docker.com/examples/running_ssh_service/
RUN mkdir /var/run/sshd
RUN echo 'root:pw' | chpasswd
RUN sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/' /etc/ssh/sshd_config
# SSH login fix. Otherwise user is kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd
ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile
EXPOSE 22


ADD startup.sh /root/startup.sh
RUN chmod +x /root/startup.sh














# FROM golang:1.9.2
# MAINTAINER Colin Henry <colin@jchenry.me>

# RUN apt-get update && \
#     apt-get install -y openssh-server

# #sshd setup - https://docs.docker.com/examples/running_ssh_service/
# RUN mkdir /var/run/sshd
# RUN echo 'root:pw' | chpasswd
# RUN sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/' /etc/ssh/sshd_config
# # SSH login fix. Otherwise user is kicked off after login
# RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd
# ENV NOTVISIBLE "in users profile"
# RUN echo "export VISIBLE=now" >> /etc/profile
# EXPOSE 22

# # RUN go get github.com/constabulary/gb/...
# # RUN go get github.com/golang/lint/golint
# # RUN go get golang.org/x/tools/cmd/goimports

# # RUN mv ./bin/* /usr/local/bin

# # RUN rm -rf /go

# ADD startup.sh /root/startup.sh
# RUN chmod +x /root/startup.sh
