FROM alpine:latest

RUN apk add ca-certificates curl docker git py3-pip && \ 
    pip install --upgrade awscli && \
    pip install ecs-deploy && \
    mkdir ~/.docker && \
    echo '{"credsStore": "ecr-login"}' > ~/.docker/config.json