#!/bin/sh
appname=$(basename "$0" | sed 's,\.sh$,,')
dirname=$(cd "$(dirname "$0")" && pwd)

export LD_LIBRARY_PATH="$dirname"
export QT_PLUGIN_PATH="$dirname/plugins"
export QT_QPA_PLATFORM_PLUGIN_PATH="$dirname/plugins/platforms"
export QT_DEBUG_PLUGINS=1

exec "$dirname/$appname" "$@"
