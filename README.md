# QNAP-Qfinder-Fix
QNAP Qfinder Pro Installer Fix

I implemented improved version checking by extracting numeric version components using pattern matching rather than the original "string location assumption" which now ensures compatibility across Ubuntu, Mint, and other Debian-based systems, provided they use a numeric version string (22.04, 10.42.6... etc).

The original QFinder pro package is available unmodified from [QNap](https://www.qnap.com/en/utilities/essentials).

To install this fixed version, download the `.deb` archive from the Releases section, and open a terminal in whatever folder you saved it to, then type the following:
```
[ $ ] sudo dpkg -i QNAPQfinderProUbuntux64-7.12.3.0527-patched.deb
```
