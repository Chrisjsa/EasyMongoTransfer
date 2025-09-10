#!/bin/bash

# Load configuration
source ./config.sh

# Export collections from the origin database
for collection in "${collections[@]}"; do
    mongoexport --host $ORIGIN_HOST --port $ORIGIN_PORT \
                --username $ORIGIN_USER --password $ORIGIN_PASSW \
                --authenticationDatabase $ORIGIN_SCHEMA \
                --db $ORIGIN_SCHEMA --collection "$collection" \
                --out "./exporting/${collection}.json"
done