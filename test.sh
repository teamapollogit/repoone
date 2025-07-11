#!/bin/bash

# Simple test script for demonstration
# Replace this with your actual test commands

echo "Running tests..."

# Example: Check if README exists
if [ -f "README.md" ]; then
    echo "✅ README.md exists"
else
    echo "❌ README.md not found"
    exit 1
fi

# Example: Basic syntax check for shell scripts
for script in *.sh; do
    if [ -f "$script" ]; then
        echo "Checking syntax of $script..."
        bash -n "$script"
        if [ $? -eq 0 ]; then
            echo "✅ $script syntax OK"
        else
            echo "❌ $script has syntax errors"
            exit 1
        fi
    fi
done

echo "All tests passed! 🎉"