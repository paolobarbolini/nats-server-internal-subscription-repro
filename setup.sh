#!/bin/bash

set -eux

dd if=/dev/urandom bs=1024 count=10000000 of=10gb
