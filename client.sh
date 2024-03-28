#!/bin/bash

set -eux

nats --trace --server=nats://127.0.0.1:14222 --user=test --password=test_password object add --replicas=3 --storage=file --ttl=14d stuff
nats --trace --server=nats://127.0.0.1:14222 --user=test --password=test_password object put --progress stuff 10gb

