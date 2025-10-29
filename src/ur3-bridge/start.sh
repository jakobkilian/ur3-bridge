#!/bin/bash
source activate ur3-bridge

# Get the directory of the current script
SCRIPT_DIR=$(dirname "$0")

# Construct the path to str_over_socket.py
PYTHON_SCRIPT_PATH="${SCRIPT_DIR}/ur3-bridge.py"

# Run the python script
exec python "$PYTHON_SCRIPT_PATH"
