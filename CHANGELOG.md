# CHANGELOG

0.6 (Unreleased)
----------------

- Switch to `python:3-slim` image.
- Upgrade versions to:
  - `devpi-client==5.1.0`
  - `devpi-server==5.2.0`
  - `devpi-common==3.4.0`
  - `devpi-web==4.0.0`

0.5 (2018-09-23)
----------------

- Pin version in openshift deploymentconfig
- Use Python 3.7-slim base image
- Upgrade versions to `devpi-client==4.1.0, devpi-common==3.3.1, devpi-server==4.7.1, devpi-web==3.4.1`
- Make `/run.sh` and `logger_cfg.json` readonly to user


0.4 (2017-06-27)
----------------

- Fix startup issue if `DEVPI_SERVERDIR` already created and entrypoint tries
  to set password again, which failed.


0.3 (2017-06-26)
----------------

- Set root password if `DEVPI_PASSWORD` is set.
- Put clientdir also into `/mnt` mountpoint.
- Pin version in openshift deploymentconfig.


0.2 (2017-06-11)
----------------

- readinessProbe checks status page
- build on top of official `python:3.6` image.
- bundle `devpi-web`
- upgrade versions to `devpi-client==3.0.0, devpi-common==3.1.0 , devpi-server==4.3.0, devpi-web==3.2.0`
- drop `root` user creation.


0.1 (2017-04-03)
----------------

- No `devpi-web` installed.
- build on top of official `python:3.5-alpine` image.
- initial fork and upload to docker hub.
