FROM docker:19.03

ADD config.json /root/.docker/config.json
ADD docker-credential-ecr-login /usr/bin/docker-credential-ecr-login
RUN chmod a+x /usr/bin/docker-credential-ecr-login

CMD ["echo", "This is a 'Purpose Built Image', It is not meant to be ran directly"]
