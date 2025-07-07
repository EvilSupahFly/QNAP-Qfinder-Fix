# QNAP-Qfinder-Fix
QNAP Qfinder Pro Installer Fix

I implemented improved version checking by extracting numeric version components using pattern matching rather than the original "string location assumption" which now ensures compatibility across Ubuntu, Mint, and other Debian-based systems, provided they use a numeric version string (22.04, 10.42.6... etc).

The original QFinder pro package is available unmodified from [QNap](https://www.qnap.com/en/utilities/essentials).

To install this fixed version, download the `.deb` archive from the Releases section, and open a terminal in whatever folder you saved it to, then type the following:
```
[ $ ] sudo dpkg -i QNAPQfinderProUbuntux64-7.12.3.0527-patched.deb
```

QNAP requires - at minimum - libc 2.27, QT 5.6 (probably - it's not documented specifically though), and Ubuntu 18.04 (or something derrived from it), so I'm consdiering adding a `glibc` check and bump the OS version check down to be a fail-safe check if `libc` can't be determined.

If you encounter any issues either with the install, or after, when running the app, try running this diagnostic script ([diagnostics.sh](https://github.com/EvilSupahFly/QNAP-Qfinder-Fix/releases/download/7.12.3.0527/diagnostics.sh)) and posting both the original error, and the output of this script, in a ticket.