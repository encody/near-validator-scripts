#!/usr/bin/env bash

journalctl -n 100 -f -u neard | ccze -A

