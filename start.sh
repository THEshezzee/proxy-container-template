#!/bin/bash

sing-box run -c server.json &
ttyd --debug 0 \
	-c $creds \
	--base-path /ttyd/ \
	fish &
tor &
tailscaled -tun userspace-networking &
tailscale up --auth-key $ts_key \
	--advertise-exit-node \
	--ssh \
	--hostname $HOSTNAME &
rathole -c client_tcp_secure.toml
