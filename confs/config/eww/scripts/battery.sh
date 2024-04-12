#!/bin/bash

BATTERY="$(acpi | awk -F ' ' 'END {print $4}' | tr -d \%,)"
echo "${BATTERY}%"
