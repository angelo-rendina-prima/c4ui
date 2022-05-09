#! /bin/sh
set -ex

STRUCTURIZR_DIR="/usr/local/structurizr"
TMP_DIR="/tmp/docs"

git clone "https://${GITHUB_TOKEN}@github.com/angelo-rendina-prima/structurizr.git" $TMP_DIR
rm -rf ${STRUCTURIZR_DIR}/docs
mv $TMP_DIR $STRUCTURIZR_DIR
echo "!include docs/workspace.dsl" > ${STRUCTURIZR_DIR}/workspace.dsl
cd ${STRUCTURIZR_DIR}/docs

while true; do
    sleep 5
    git pull
done
