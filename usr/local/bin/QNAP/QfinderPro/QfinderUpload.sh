#!/bin/bash

#!/bin/sh
appname=`basename $0 | sed s,\.sh$,,`

dirname=`dirname $0`
tmp="${dirname#?}"

if [ "${dirname%$tmp}" != "/" ]; then
dirname=$PWD/$dirname
fi
LD_LIBRARY_PATH="$dirname/lib"
export LD_LIBRARY_PATH=/usr/local/lib/QNAP/QfinderPro
$dirname/$appname "$@"
