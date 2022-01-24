FROM docker:19.03.12

ENV DEBIAN_FRONTEND=noninteractive

ADD config.json /root/.docker/config.json
# ADD docker-credential-ecr-login /usr/bin/docker-credential-ecr-login

RUN sudo apt-get update && sudo apt-get install -y \
    amazon-ecr-credential-helper \
    && rm -rf /var/lib/apt/lists/*

RUN chmod a+x /usr/bin/docker-credential-ecr-login

CMD ["echo", "This is a 'Purpose Built Image', It is not meant to be ran directly"]
