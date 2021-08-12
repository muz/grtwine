# grtwine

Some total nonsense I've whacked together to enable me to run
GordonsReloadingTool on MacOS given I had Docker and XQuartz installed for
Other Reasons.

## Dependencies

On the local machine;

* An extracted copy of the 32-bit Windows GRT client in `~/grt`.
* Docker for Mac 🤢
* socat
* xquartz

The latter two being via `brew`.

## Overview

1. XQuartz should be configured on the host to allow network clients
1. `make socat` starts XQuartz and `socat` to expose the X Server
1. `make build` generates a locally Docker image (`grt`) with 32-bit Wine 
1. `make run` spawns GRT under Wine using the previously exposed X server

Could this be better? Oh totally.
