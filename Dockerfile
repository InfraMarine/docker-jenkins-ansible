FROM jenkins/jenkins:lts-jdk11

USER root

RUN apt-get update && apt-get install -y --no-install-recommends python3-pip \
    && pip3 install --no-cache-dir ansible \
    && pip3 install --no-cache-dir boto3 \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

USER jenkins
