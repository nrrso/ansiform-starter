FROM alpine:latest
ARG TARGETARCH
ENV TERRAFORM_VERSION=0.13.0

# apk install incl. ansible
RUN apk add --no-cache wget ansible openssh git socat
# terraform install
RUN wget https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip -O /tmp/terraform.zip 
RUN cd /usr/local/bin && unzip /tmp/terraform.zip && chmod 755 /usr/local/bin/terraform