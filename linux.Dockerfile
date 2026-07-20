FROM lacledeslan/gamesvr-dods

ARG BUILD_DATE=unspecified \
    BUILD_NODE=unspecified \
    GIT_REVISION=unspecified

HEALTHCHECK NONE

LABEL architecture="amd64" \
      com.lacledeslan.build-node="$BUILD_NODE" \
      maintainer="Laclede's LAN <contact@lacledeslan.com>" \
      org.opencontainers.image.created="$BUILD_DATE" \
      org.opencontainers.image.description="Laclede's LAN Day of Defeat Dedicated Freeplay Server" \
      org.opencontainers.image.revision="$GIT_REVISION" \
      org.opencontainers.image.source="https://github.com/LacledesLAN/gamesvr-dods-freeplay" \
      org.opencontainers.image.vendor="Laclede's LAN"

COPY --chown=DODS:root /sourcemod.linux /app/dod

COPY --chown=DODS:root /sourcemod-configs /app/dod

COPY --chown=DODS:root /dist /app

COPY --chown=DODS:root /dist/linux/ll-tests /app/ll-tests

RUN usermod -l DODSFreeplay DODS && \
    chmod +x /app/ll-tests/*.sh;

USER DODSFreeplay
