#!/bin/bash

sed -i -e "s/::GITLAB_URL::/${GITLAB_URL}/g" /root/files/drone.toml
