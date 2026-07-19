#!/usr/bin/env bash

set -euo pipefail

sed -i \
  's/^DEFAULT_INPUT_POLICY=.*/DEFAULT_INPUT_POLICY="DROP"/' \
  /etc/default/ufw

sed -i \
  's/^DEFAULT_OUTPUT_POLICY=.*/DEFAULT_OUTPUT_POLICY="ACCEPT"/' \
  /etc/default/ufw

sed -i \
  's/^DEFAULT_FORWARD_POLICY=.*/DEFAULT_FORWARD_POLICY="DROP"/' \
  /etc/default/ufw

sed -i \
  's/^ENABLED=.*/ENABLED=yes/' \
  /etc/ufw/ufw.conf

systemctl disable firewalld.service 2>/dev/null || true
