#!/bin/bash

sed -i -e "s/::GITLAB_URL::/${GITLAB_URL}/g" /root/files/drone.toml
sed -i -e "s/::GITLAB_CLIENT::/${GITLAB_CLIENT}/g" /root/files/drone.toml
sed -i -e "s/::GITLAB_SECRET::/${GITLAB_SECRET}/g" /root/files/drone.toml
sed -i -e "s/::WORKERS_URL::/${WORKERS_URL}/g" /root/files/drone.toml
sed -i -e "s/::GITHUB_CLIENT::/${GITHUB_CLIENT}/g" /root/files/drone.toml
sed -i -e "s/::GITHUB_SECRET::/${GITHUB_SECRET}/g" /root/files/drone.toml
sed -i -e "s/::DB_DRIVER::/${DB_DRIVER}/g" /root/files/drone.toml
sed -i -e "s/::DB_DATASOURCE::/${DB_DATASOURCE}/g" /root/files/drone.toml
