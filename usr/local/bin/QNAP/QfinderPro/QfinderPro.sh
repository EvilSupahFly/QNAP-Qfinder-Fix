#!/bin/sh
appname=$(basename "$0" | sed 's,\.sh$,,')
dirname=$(cd "$(dirname "$0")" && pwd)

export LD_LIBRARY_PATH="/usr/local/lib/QNAP/QfinderPro"
export QT_PLUGIN_PATH="$dirname"
export QT_QPA_PLATFORM_PLUGIN_PATH="$dirname/platforms"
export QT_DEBUG_PLUGINS=1

exec "$dirname/$appname" "$@"