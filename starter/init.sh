#!/usr/bin/env bash

sudo zypper refresh
sudo zypper --non-interactive install bzip2 etcd git apparmor-parser go wget
sudo zypper --non-interactive install docker && \
    sudo systemctl enable docker && \
    sudo groupadd docker || true && \
    sudo usermod -aG docker $USER && \
    newgrp docker /