FROM python:3-alpine

ENV DEVPI_SERVERDIR=/mnt/server \
    DEVPI_CLIENTDIR=/mnt/client \
    DEVPI_MIRROR_CACHE_EXPIRY=86400 \
    BUILD_DEPS="musl-dev gcc libffi-dev"

COPY ["requirements.txt", "logger_cfg.json", "run.sh", "/"]

RUN apk add --no-cache ${BUILD_DEPS} && \
    pip install --no-cache-dir -r /requirements.txt && \
    apk del ${BUILD_DEPS} && \
    rm /requirements.txt && \
    chmod 0555 /run.sh /logger_cfg.json


VOLUME /mnt
EXPOSE 3141
USER 997

CMD "/run.sh"
