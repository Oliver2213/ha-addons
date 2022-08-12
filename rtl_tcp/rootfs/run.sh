#!/usr/bin/with-contenv bashio

bashio::log.info "Starting rtl_tcp..."
addr=$(bashio::config 'address')
dev_idx=$(bashio::config 'device_index')
port=$(bashio::config 'port')

rtl_tcp -a $addr -p $port -d $dev_idx