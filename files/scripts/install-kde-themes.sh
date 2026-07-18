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

echo "Installing Carl Plasma style as an optional alternative"

git clone \
  --depth 1 \
  https://github.com/numbpill3d/kde-plasma-desktopthemes-carl.git \
  "${WORKDIR}/CarlRepo"

if [[ ! -d "${WORKDIR}/CarlRepo/Carl" ]]; then
  echo "Carl Plasma theme directory was not found"
  exit 1
fi

install -d /usr/share/plasma/desktoptheme/Carl
cp -a "${WORKDIR}/CarlRepo/Carl/." /usr/share/plasma/desktoptheme/Carl/

echo "KDE Plasma themes installed successfully"
