#!/usr/bin/env bash

set -euo pipefail

find_config() {
    local standard_path="$1"
    local atomic_path="$2"

    if [[ -f "${standard_path}" ]]; then
        printf '%s\n' "${standard_path}"
    elif [[ -f "${atomic_path}" ]]; then
        printf '%s\n' "${atomic_path}"
    else
        echo "ERROR: UFW configuration not found:" >&2
        echo "  ${standard_path}" >&2
        echo "  ${atomic_path}" >&2
        exit 1
    fi
}

DEFAULT_CONFIG="$(
    find_config \
        /etc/default/ufw \
        /usr/etc/default/ufw
)"

UFW_CONFIG="$(
    find_config \
        /etc/ufw/ufw.conf \
        /usr/etc/ufw/ufw.conf
)"

echo "Configuring UFW defaults in ${DEFAULT_CONFIG}"
echo "Configuring UFW activation in ${UFW_CONFIG}"

sed -i \
    's/^DEFAULT_INPUT_POLICY=.*/DEFAULT_INPUT_POLICY="DROP"/' \
    "${DEFAULT_CONFIG}"

sed -i \
    's/^DEFAULT_OUTPUT_POLICY=.*/DEFAULT_OUTPUT_POLICY="ACCEPT"/' \
    "${DEFAULT_CONFIG}"

sed -i \
    's/^DEFAULT_FORWARD_POLICY=.*/DEFAULT_FORWARD_POLICY="DROP"/' \
    "${DEFAULT_CONFIG}"

sed -i \
    's/^ENABLED=.*/ENABLED=yes/' \
    "${UFW_CONFIG}"

grep -F 'DEFAULT_INPUT_POLICY="DROP"' "${DEFAULT_CONFIG}"
grep -F 'DEFAULT_OUTPUT_POLICY="ACCEPT"' "${DEFAULT_CONFIG}"
grep -F 'DEFAULT_FORWARD_POLICY="DROP"' "${DEFAULT_CONFIG}"
grep -F 'ENABLED=yes' "${UFW_CONFIG}"

echo "UFW defaults configured successfully."
