#!/bin/bash

/Applications/Utilities/XQuartz.app/Contents/MacOS/X11.bin &
socat TCP-LISTEN:6000,reuseaddr,fork UNIX-CLIENT:\"$DISPLAY\" &
