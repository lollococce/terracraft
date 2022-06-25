#
# Extended from itzg/minecraft-server:latest
#
# Copyright on itzg/minecraft-server:latest
# of itzg (https://github.com/itzg)
#
FROM itzg/minecraft-server:latest

# Install Git
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends git wget unzip gnupg software-properties-common
# Install Terraform
RUN wget --quiet https://releases.hashicorp.com/terraform/1.2.1/terraform_1.2.1_linux_amd64.zip \
  && unzip terraform_1.2.1_linux_amd64.zip \
  && mv terraform /usr/bin \
  && rm terraform_1.2.1_linux_amd64.zip
# Check if working
RUN terraform -help
