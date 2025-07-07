#!/bin/bash
echo "LD path test:"
ldd /usr/local/bin/QNAP/QfinderPro/QfinderPro | grep Qt

echo -e "\nQt symbol versions in Qfinder:"
strings /usr/local/bin/QNAP/QfinderPro/QfinderPro | grep Qt_

echo -e "\nGLIBC version:"
ldd --version | head -n1

echo -e "\nSystem Qt5:"
dpkg -l | grep libqt5
