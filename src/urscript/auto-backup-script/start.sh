#!/bin/bash

# Get the directory of the current script
SCRIPT_DIR=$(dirname "$0")

# Log file locations
LOG_DIR="$SCRIPT_DIR/logs"
mkdir -p "$LOG_DIR"

# Check if virtual environment activation works
if ! source activate ur 2>/dev/null; then
    echo "Warning: Could not activate 'ur' virtual environment. Using system Python."
fi

# Check if Python script exists
PYTHON_SCRIPT="$SCRIPT_DIR/pushRoutine.py"
if [[ ! -f "$PYTHON_SCRIPT" ]]; then
    echo "Error: Python script not found at $PYTHON_SCRIPT"
    exit 1
fi

# Execute the Python script with logging
echo "Starting UR3 backup routine at $(date)"
exec python "$PYTHON_SCRIPT" "$SCRIPT_DIR" 2>&1