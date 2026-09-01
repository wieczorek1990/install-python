#!/bin/sh
# Sets shell options and usefull variables.

set -oux pipefail

cpu_count=$(sysctl -n hw.ncpu)
prefix=~/.local
