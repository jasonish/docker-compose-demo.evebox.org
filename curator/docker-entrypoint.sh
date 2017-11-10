#! /bin/sh

set -x

curator_loop() {
    while true; do
	sleep 3600
	curator --config /etc/curator/config.yaml /etc/curator/actions.yaml
    done
}

curator_loop
