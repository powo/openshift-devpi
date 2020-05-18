# OpenShift devpi

This repository contains a dockerized version of [devpi](http://doc.devpi.net/)
to be used on OpenShift by running as a non-priviledged user.

## Run

    docker run -v $(pwd)/mnt:/mnt -p 3141:3141 -it widerin/openshift-devpi:latest

## Environment variables

- `DEVPI_PASSWORD`: devpi creates a user named `root` by default, its password
  can be set with this environment variable.
- `DEVPI_MIRROR_CACHE_EXPIRY`: Default to `86400` which is one day. Cache expiry time.
- `DEVPI_SERVER_OPTIONS`: additional options to pass to the devpi-server command line

## Create on openshift

    oc login https://<your-master-node>:8443
    oc new-project devpi
    oc create -f openshift/deployment.yaml
    oc create -f openshift/service.yaml

If you want to expose your devpi server you have to create a route.
