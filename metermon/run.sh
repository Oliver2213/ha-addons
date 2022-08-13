#!/usr/bin/with-contenv bashio

export RTL_TCP_SERVER=$(bashio::config 'rtl_address')
export MQTT_BROKER_HOST=$(bashio::config 'mqtt_address')
export MQTT_BROKER_PORT=$(bashio::config 'mqtt_port')
export MQTT_USERNAME=$(bashio::config 'mqtt_username')
export MQTT_PASSWORD=$(bashio::config 'mqtt_password')
export METERMON_SEND_RAW=$(bashio::config 'send_raw')

# If no mqtt broker host, ask homeassistant
# Note: the way this works means that if no host is set, the port, username and password options are ignored
  # in favor of what homeassistant's mqtt service is set to.
  # This is to allow for easy set-up in common cases.
if [ -z "$MQTT_BROKER_HOST" ]; then
  export MQTT_BROKER_HOST=$(bashio::services mqtt "host")
  export MQTT_BROKER_PORT=$(bashio::services mqtt "port")
  export MQTT_USERNAME=$(bashio::services mqtt "username")
  export MQTT_PASSWORD=$(bashio::services mqtt "password")
  bashio::log.info "No mqtt host set; connecting to homeassistant's mqtt service: $MQTT_USERNAME@$MQTT_BROKER_HOST:$MQTT_BROKER_PORT"
fi
#bashio::log.info "Connecting to broker with user $MQTT_USERNAME and password $MQTT_PASSWORD"
python3 -u metermon.py
