#!/bin/bash

# Test script for fortytwo kernel module
# Author: Your Name
# Description: This script tests all behaviors of the module:
# - Load and unload module
# - Verify debugfs creation
# - Test "id", "jiffies", and "foo" files

DEBUGFS_PATH="/sys/kernel/debug/fortytwo"
MODULE_NAME="fortytwo"
ID_FILE="${DEBUGFS_PATH}/id"
JIFFIES_FILE="${DEBUGFS_PATH}/jiffies"
FOO_FILE="${DEBUGFS_PATH}/foo"

echo "=== Testing fortytwo Kernel Module ==="

# Step 1: Load the module
echo "[1] Loading the module..."
sudo insmod ${MODULE_NAME}.ko
if [ $? -ne 0 ]; then
    echo "Failed to load module ${MODULE_NAME}.ko"
    exit 1
fi
echo "Module loaded successfully."

# Step 2: Verify debugfs directory
echo "[2] Verifying debugfs directory..."
if [ ! -d "${DEBUGFS_PATH}" ]; then
    echo "Debugfs directory '${DEBUGFS_PATH}' not found!"
    sudo rmmod ${MODULE_NAME}
    exit 1
fi
echo "Debugfs directory exists: ${DEBUGFS_PATH}"

# Step 3: Test the 'id' file
echo "[3] Testing 'id' file..."

# Write the correct student login
echo "Writing 'imarushe' to 'id'..."
echo -n "imarushe" | sudo tee ${ID_FILE} > /dev/null
echo "Reading from 'id'..."
cat ${ID_FILE}

# Write an incorrect student login
echo "Writing 'wronglogin' to 'id'..."
echo -n "wronglogin" | sudo tee ${ID_FILE} > /dev/null
echo "Reading from 'id'..."
cat ${ID_FILE}

# Step 4: Test the 'jiffies' file
echo "[4] Testing 'jiffies' file (read-only)..."
echo "Current jiffies value:"
cat ${JIFFIES_FILE}

# Step 5: Test the 'foo' file
echo "[5] Testing 'foo' file..."

# Write to 'foo' as root
echo "Writing to 'foo' as root: 'test_data'..."
echo "test_data" | sudo tee ${FOO_FILE} > /dev/null

# Read from 'foo' as a regular user
echo "Reading from 'foo' as a regular user:"
cat ${FOO_FILE}

# Step 6: Test write access permissions to 'foo' as a regular user
echo "[6] Attempting to write to 'foo' as a regular user..."
echo "attempt_data" > ${FOO_FILE} 2>/dev/null
if [ $? -ne 0 ]; then
    echo "Write failed as expected for regular user."
else
    echo "Error: Write succeeded, but it should have failed for regular user."
fi

# Step 7: Unload the module
echo "[7] Unloading the module..."
sudo rmmod ${MODULE_NAME}
if [ $? -ne 0 ]; then
    echo "Failed to unload module ${MODULE_NAME}"
    exit 1
fi
echo "Module unloaded successfully."

# Step 8: Verify cleanup
echo "[8] Verifying cleanup..."
if [ -d "${DEBUGFS_PATH}" ]; then
    echo "Error: Debugfs directory '${DEBUGFS_PATH}' still exists!"
    exit 1
fi
echo "Cleanup successful. Debugfs directory removed."

echo "=== All tests completed successfully ==="

