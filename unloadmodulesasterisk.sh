asterisk -rx "unload mod"
#Don't load skinny (tcp port 2000)  
#noload => chan_skinny.so  
# Don't load MGCP (udp port 2727)
#noload => chan_mgcp.so  
# Don't load dundi (udp port 4520)
#noload => pbx_dundi.so  
# Don't load unistim (udp port 5000)
#noload => chan_unistim.so  
# Don't load ooh323 (tcp port 1720)
#noload => chan_ooh323.so  
# Don't load IAX2 (udp port 4569)
#noload => chan_iax2.so  
# Don't load SQLite because of crashes with heavy call volumes
# SQLite (version 2) is NOT needed for Asterisk
#noload => cdr_sqlite.so  
#noload => res_config_sqlite.so
