#!/bin/sh

# Dmenu script to grab bbc radio live streams

radioSta=$(printf "bbc_radio_one\\nbbc_radio_two\\nbbc_radio_three\\nbbc_radio_fourfm\\nbbc_radio_fourlw\\nbbc_radio_five_live\\nbbc_1xtra\\nbbc_radio_one_dance\\nbbc_radio_one_relax\\nbbc_radio_four_extra\\nbbc_radio_five_live_sports_extra\\nbbc_6music\\nbbc_asian_network\\nbbc_world_service" | dmenu -i -p "Select Station:")
mpv --force-window --keep-open=yes "http://as-hls-uk-live.akamaized.net/pool_904/live/uk/$radioSta/$radioSta.isml/$radioSta-audio%3d320000.norewind.m3u8"
