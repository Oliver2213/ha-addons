#!/usr/bin/with-contenv bashio

export RTL_TCP_SERVER=$(bashio::config 'rtl_address')
export MQTT_BROKER_HOST=$(bashio::config 'mqtt_address')
export MQTT_BROKER_PORT=$(bashio::config 'mqtt_port')
export MQTT_USERNAME=$(bashio::config 'mqtt_username')
export MQTT_PASSWORD=$(bashio::config 'mqtt_password')
export METERMON_SEND_RAW=$(bashio::config 'send_raw')
bashio::log.info "Connecting to broker with user $MQTT_USERNAME and password $MQTT_PASSWORD"
python3 -u metermon.py
