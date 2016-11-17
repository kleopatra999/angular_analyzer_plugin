#!/bin/bash

# Fast fail the script on failures.
set -e

# Go to the respective package directory and resolve pub dependencies.
cd $PACKAGE
pub get

cd test

# Analyze the test first
dartanalyzer test_all.dart

# Run the actual tests
dart test_all.dart
