# https://developers.home-assistant.io/docs/add-ons/configuration#add-on-dockerfile
ARG BUILD_FROM
FROM $BUILD_FROM

# Execute during the build of the image
ARG TEMPIO_VERSION BUILD_ARCH

LABEL org.opencontainers.image.source=https://github.com/Oliver2213/ha-addons

RUN \
    curl -sSLf -o /usr/bin/tempio \
    "https://github.com/home-assistant/tempio/releases/download/${TEMPIO_VERSION}/tempio_${BUILD_ARCH}"

# Install rtl-sdr
RUN \
    apk add --no-cache rtl-sdr

# Copy root filesystem
COPY rootfs /

RUN \
    chmod a+x /run.sh

CMD [ "/run.sh" ]