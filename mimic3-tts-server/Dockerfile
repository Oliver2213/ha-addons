# https://developers.home-assistant.io/docs/add-ons/configuration#add-on-dockerfile
ARG BUILD_FROM
FROM $BUILD_FROM

# RUN apk add --no-cache git espeak espeak-dev
RUN apt-get update && apt-get install -y libespeak-ng1 python3 python3-pip python3-venv git
RUN git clone --depth=1 https://github.com/MycroftAI/mimic3
RUN cd mimic3 && ./install.sh

EXPOSE 59125
COPY run.sh .
RUN chmod a+x run.sh
#CMD [ "./.venv/bin/python", "-m", "mimic3-server" ]
CMD [ "./run.sh" ]
