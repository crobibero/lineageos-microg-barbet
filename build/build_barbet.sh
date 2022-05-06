#!/bin/bash

docker pull lineageos4microg/docker-lineage-cicd:latest
docker rm "lineageos"
docker run \
       --name "lineageos" \
       -e "BRANCH_NAME=lineage-19.1" \
       -e "DEVICE_LIST=barbet" \
       -e "INCLUDE_PROPRIETARY=true" \
       -e "CCACHE_SIZE=100G" \
       -e "CLEAN_AFTER_BUILD=false" \
       -e "SIGN_BUILDS=true" \
       -e "SIGNATURE_SPOOFING=yes" \
       -e "CUSTOM_PACKAGES=GmsCore GsfProxy FakeStore FDroid FDroidPrivilegedExtension AndroidAuto gappsstub speechservicestub auroraservices" \
       -v "$PWD/src:/srv/src" \
       -v "$PWD/zips:/srv/zips" \
       -v "$PWD/logs:/srv/logs" \
       -v "$PWD/ccache:/srv/ccache" \
       -v "$PWD/local_manifests:/srv/local_manifests" \
       -v "$PWD/userscripts:/srv/userscripts" \
       -v "$HOME/.android-certs:/srv/keys" \
       lineageos4microg/docker-lineage-cicd:latest

# Keep the android signing keys in the home directory to avoid accidentally including in a git commit
