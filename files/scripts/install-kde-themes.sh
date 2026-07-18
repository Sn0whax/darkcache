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

echo "Installing Carl color scheme"

git clone \
  --depth 1 \
  https://github.com/numbpill3d/kde-plasma-desktopthemes-carl.git \
  "${WORKDIR}/Carl"

install -d /usr/share/color-schemes

CARL_FILE="$(find "${WORKDIR}/Carl" -type f -iname '*carl*.colors' | head -n 1)"

if [[ -z "${CARL_FILE}" ]]; then
  echo "Could not find the Carl color-scheme file"
  exit 1
fi

install -m 0644 "${CARL_FILE}" /usr/share/color-schemes/Carl.colors

echo "KDE themes installed successfully"
