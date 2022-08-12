# https://developers.home-assistant.io/docs/add-ons/configuration#add-on-dockerfile
ARG BUILD_FROM
FROM $BUILD_FROM

# Execute during the build of the image
ARG TEMPIO_VERSION BUILD_ARCH
RUN \
    curl -sSLf -o /usr/bin/tempio \
    "https://github.com/home-assistant/tempio/releases/download/${TEMPIO_VERSION}/tempio_${BUILD_ARCH}"

# Install go, python3 and paho-mqtt
RUN \
    apk add --no-cache go git python3 py3-paho-mqtt

RUN go install github.com/bemasher/rtlamr@latest

#WORKDIR /go/src/github.com/bemasher/rtlamr

#RUN go install

ADD metermon.py .
ADD run.sh .

RUN mv $HOME/go/bin/rtlamr ./
RUN ./rtlamr --version

# CMD ["python3", "-u", "./metermon.py"]
CMD [ "./run.sh' ]