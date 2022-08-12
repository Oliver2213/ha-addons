#!/usr/bin/with-contenv bashio

RTL_TCP_SERVER=$(bashio::config 'rtl_address')
RTL_TCP_PORT=$(bashio::config 'rtl_port')
MQTT_BROKER_HOST=$(bashio::config 'mqtt_address')
MQTT_BROKER_PORT=$(bashio::config 'mqtt_port')
MQTT_USERNAME=$(bashio::config 'mqtt_username')
MQTT_PASSWORD=$(bashio::config 'mqtt_password')
METERMON_SEND_RAW=$(bashio::config 'send_raw')
bashio::log.info "Connecting to broker with user $(MQTT_USERNAME) and password $(MQTT_PASSWORD)"
python3 -u metermon.py
