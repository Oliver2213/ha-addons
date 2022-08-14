# https://developers.home-assistant.io/docs/add-ons/configuration#add-on-dockerfile
ARG BUILD_FROM
FROM $BUILD_FROM

RUN apk add --no-cache\
    git espeak espeak-dev

RUN git clone --depth=1 https://github.com/MycroftAI/mimic3
RUN cd mimic3 && ./install.sh

EXPOSE 59125

CMD [ "./.venv/bin/python3", "-m", "mimic3-server" ]