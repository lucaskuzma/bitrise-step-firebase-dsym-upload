#!/bin/bash

if [ ! -e "$fdu_fabric_location" ]; then
  echo "Please provide the location of Fabric"
  exit 1
fi

if [ ! -e "$fdu_fabric_api_key" ]; then
  echo "Please provide your Fabric API key"
  exit 1
fi

if [ ! -e "$fdu_dsym_location" ]; then
  echo "Please provide the location of your dSYM"
  exit 1
fi

"$fdu_fabric_location" -a "$fdu_fabric_api_key" -p ios "$fdu_dsym_location"
