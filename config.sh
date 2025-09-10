#!/bin/bash

# Configuration for MongoDB Export and Import
# Set the origin database credentials
ORIGIN_HOST="0.0.0.0"
ORIGIN_PORT="27017"
ORIGIN_USER="user_dev"
ORIGIN_PASSW="debug"
ORIGIN_SCHEMA="DATABASE_API"

# Set the destination database credentials if needed
DESTINY_HOST="0.0.0.0"
DESTINY_PORT="27017"
DESTINY_USER="user_dev"
DESTINY_PASSW="debug"
DESTINY_SCHEMA="DATABASE_API"

# List of collections to export and import
collections=("cfg_currency" "cfg_country" "cfg_state" "cfg_municipality")  # Example collections