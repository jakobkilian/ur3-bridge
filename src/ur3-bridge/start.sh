#!/bin/bash

# Get the directory of the current script
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
# Dynamically extract the username from SCRIPT_DIR
USER_NAME=$(echo "$SCRIPT_DIR" | awk -F'/' '{print $3}')

# Construct the path to ur3-bridge.py
PYTHON_SCRIPT_PATH="${SCRIPT_DIR}/ur3-bridge.py"

# Set the path to the Python executable in the Conda environment
PYTHON_EXE="/home/$USER_NAME/miniforge3/envs/ur3-bridge/bin/python"

# Run the python script using the full path to the environment's python
exec "$PYTHON_EXE" "$PYTHON_SCRIPT_PATH"
