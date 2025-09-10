#!/bin/bash

# Load configuration
source ./config.sh

# Import collections into the destination database
for collection in "${collections[@]}"; do
    mongoimport --host $DESTINY_HOST --port $DESTINY_PORT \
                --username $DESTINY_USER --password $DESTINY_PASSW \
                --authenticationDatabase $DESTINY_SCHEMA \
                --db $DESTINY_SCHEMA --collection "$collection" \
                --file "./exporting/${collection}.json"

    # Check if import was successful
    if [ $? -eq 0 ]; then
        # Remove the JSON file if import was successful
        rm "./exporting/${collection}.json"
        echo "File ${collection}.json deleted."
    else
        echo "Error importing ${collection}.json. The file will not be deleted."
    fi
done