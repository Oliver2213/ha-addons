#!/usr/bin/with-contenv bashio

RTL_TCP_SERVER=$(bashio::config 'rtl_address')
RTL_TCP_PORT=$(bashio::config 'rtl_port')
MQTT_BROKER_HOST=$(bashio::config 'mqtt_address')
MQTT_BROKER_POERT=$(bashio::config 'rtl_mqtt_port')
MQTT_USERNAME=$(bashio::config 'mqtt_username')
MQTT_PASSWORD=$(bashio::config 'mqtt_password')
send_raw=$(bashio::config 'send_raw')

python -u metermon.py
