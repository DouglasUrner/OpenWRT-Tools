#!/bin/sh

export HOSTNAME='OpenWRT-TR3000'
export TIMEZONE='PST8PDT,M3.2.0,M11.1.0'
export ZONENAME='America/Vancouver'
export DESCRIPTION=''
export NOTES=''

IPv4_ADDR='10.1.0.4'

# --- End of configuration: no changes should be needed below ---

# Set password

# Install SSH key & require a public key

# Set system parameters

uci set system.@system[0].hostname=${HOSTNAME}
uci set system.@system[0].timezone=${TIMEZONE}
uci set system.@system[0].zonename=${ZONENAME}
uci set system.@system[0].description=${DESCRIPTION}
uci set system.@system[0].notes=${NOTES}

uci commit system
/etc/init.d/system reload
