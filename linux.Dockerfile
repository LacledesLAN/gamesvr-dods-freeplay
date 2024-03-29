# escape=`
FROM lacledeslan/gamesvr-dods

HEALTHCHECK NONE

ARG BUILDNODE=unspecified
ARG SOURCE_COMMIT=unspecified

LABEL com.lacledeslan.build-node=$BUILDNODE `
      org.label-schema.schema-version="1.0" `
      org.label-schema.url="https://github.com/LacledesLAN/README.1ST" `
      org.label-schema.vcs-ref=$SOURCE_COMMIT `
      org.label-schema.vendor="Laclede's LAN" `
      org.label-schema.description="LL Day of Defeat Dedicated Freeplay Server" `
      org.label-schema.vcs-url="https://github.com/LacledesLAN/gamesvr-dods-freeplay"

COPY --chown=DODS:root /sourcemod.linux /app/dod

COPY --chown=DODS:root /sourcemod-configs /app/dod

COPY --chown=DODS:root /dist /app

COPY --chown=DODS:root /dist/linux/ll-tests /app/ll-tests

RUN usermod -l DODSFreeplay DODS &&`
    chmod +x /app/ll-tests/*.sh;

USER DODSFreeplay

ONBUILD USER root
