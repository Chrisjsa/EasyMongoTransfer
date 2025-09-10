```markdown
# EasyMongoTransfer

## Overview
Bash scripts for exporting and importing collections from MongoDB databases. With a focus on simplicity and efficiency, it allows users to manage data easily by automating the export to JSON files and re-importing them. Configuration parameters are centralized for easy customization, making it ideal for developers and database administrators.


## Scripts

### `mongoe.sh`
This script exports specified collections from a MongoDB database. 

#### Requirements:
- MongoDB must be installed and accessible.
- MongoDB tools must be available in your PATH.

### Usage
1. Configure your database settings in `config.sh`.
2. Run the script using:
   ```bash
   ./mongoe.sh
   ```

### `mongoi.sh`
This script imports collections into a MongoDB database.

### Usage
1. Ensure the JSON files for the collections to be imported are located in the `./exporting` directory.
2. Run the script using:
   ```bash
   ./mongoi.sh
   ```

## Configuration
Modify the `config.sh` file to set your MongoDB credentials and the list of collections you want to export or import:
- `ORIGIN_HOST`, `ORIGIN_PORT`, `ORIGIN_USER`, `ORIGIN_PASSW`, `ORIGIN_SCHEMA`
- `DESTINY_HOST`, `DESTINY_PORT`, `DESTINY_USER`, `DESTINY_PASSW`, `DESTINY_SCHEMA`
- `collections`

## Notes
- Ensure the `exporting` directory exists before running the scripts.
- The import script will delete JSON files after a successful import.