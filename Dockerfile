FROM runatlantis/atlantis:v0.9.0

LABEL authors="Julian Einhaus"

ENV TERRAGRUNT_VERSION=v0.19.25

RUN curl -s -Lo terragrunt https://github.com/gruntwork-io/terragrunt/releases/download/${TERRAGRUNT_VERSION}/terragrunt_linux_amd64 && \
    chmod +x terragrunt && \
    mv terragrunt /usr/local/bin && \
    chown atlantis:atlantis /usr/local/bin/terragrunt
