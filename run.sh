#!/bin/bash

rm -rf jetstream1/ jetstream2/ jetstream3/

tmux \
    new-session -s nats-issue 'GOMEMLIMIT=512MiB nats-server --config nats-server.1.conf' \; \
    split-window 'GOMEMLIMIT=512MiB nats-server --config nats-server.2.conf' \; \
    split-window 'GOMEMLIMIT=512MiB nats-server --config nats-server.3.conf' \; \
    split-window 'sleep 5s && ./client.sh; sleep infinity'
