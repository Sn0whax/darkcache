#!/usr/bin/env bash

set -euo pipefail

WORKDIR="$(mktemp -d)"
trap 'rm -rf "${WORKDIR}"' EXIT

echo "Installing Sweet Plasma style"

git clone \
  --depth 1 \
  https://github.com/EliverLara/Sweet-kde.git \
  "${WORKDIR}/Sweet"

install -d /usr/share/plasma/desktoptheme/Sweet
cp -a "${WORKDIR}/Sweet/." /usr/share/plasma/desktoptheme/Sweet/

echo "Installing Carl color scheme by jomada"

git clone \
  --depth 1 \
  https://gitlab.com/jomada/carl.git \
  "${WORKDIR}/Carl"

CARL_COLOR_FILE="$(
  find "${WORKDIR}/Carl" \
    -type f \
    -name 'Carl.colors' \
    -print \
    -quit
)"

if [[ -z "${CARL_COLOR_FILE}" ]]; then
  CARL_COLOR_FILE="$(
    find "${WORKDIR}/Carl" \
      -type f \
      -name '*.colors' \
      -print \
      -quit
  )"
fi

if [[ -z "${CARL_COLOR_FILE}" ]]; then
  echo "ERROR: Carl color-scheme file was not found"
  exit 1
fi

install -D -m 0644 \
  "${CARL_COLOR_FILE}" \
  /usr/share/color-schemes/Carl.colors

echo "KDE themes installed successfully"
