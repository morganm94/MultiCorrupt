#!/bin/bash

# Set the path to the Python executable and your script
PYTHON_EXEC=/usr/bin/python3
SCRIPT_PATH=/workspace/helper/generate_gif.py

# List of severity levels
SEVERITY_LEVELS=("1" "2" "3")

# List of corruption types
CORRUPTION_TYPES=("snow" "pointsreducing" "beamsreducing" "fog" "spatialmisalignment" "temporalmisalignment" "brightness" "dark" "missingcamera" "motionblur")

# Loop over severity levels and corruptions
for severity in "${SEVERITY_LEVELS[@]}"; do
    for corruption in "${CORRUPTION_TYPES[@]}"; do
        echo "Running script with severity $severity and corruption $corruption"
        $PYTHON_EXEC $SCRIPT_PATH -c $corruption -s $severity -p front_camera
    done
done
