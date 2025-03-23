#!/bin/sh

# Dmenu script to grab bbc radio live streams
radioSta=$(printf "BBC\\nClassicFM" | dmenu -i -p "Select Station:")
if [ "$radioSta" = 'BBC' ]
then
	bbcSta=$(printf "bbc_radio_one\\nbbc_radio_two\\nbbc_radio_three\\nbbc_radio_fourfm\\nbbc_radio_fourlw\\nbbc_radio_five_live\\nbbc_1xtra\\nbbc_radio_one_dance\\nbbc_radio_one_relax\\nbbc_radio_four_extra\\nbbc_radio_five_live_sports_extra\\nbbc_6music\\nbbc_asian_network\\nbbc_world_service" | dmenu -i -p "Select BBC Station:")
	#url="http://as-hls-ww-live.akamaized.net/pool_01505109/live/ww/$bbcSta/$bbcSta.isml/$bbcSta-audio%3d48000.norewind.m3u8"
	url="http://a.files.bbci.co.uk/ms6/live/3441A116-B12E-4D2F-ACA8-C1984642FA4B/audio/simulcast/dash/nonuk/pc_hd_abr_v2/ak/$bbcSta.mpd"
elif [ "$radioSta" = 'ClassicFM' ]
then
	url="https://www.globalplayer.com/live/classicfm/uk/"
fi
mpv --force-window --keep-open=yes $url
