#! /bin/sh
set -ex

git clone git@github.com:angelo-rendina-prima/structurizr.git /tmp/docs
rm -rf /usr/local/structurizr/docs
mv /tmp/docs /usr/local/structurizr
echo "!include docs/workspace.dsl" > /usr/local/structurizr/workspace.dsl
cd /usr/local/structurizr/docs

while true; do
    sleep 5
    git pull
done
