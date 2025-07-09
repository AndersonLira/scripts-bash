#!/bin/bash

# Check if a directory is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

# Check if the provided directory exists
if [ ! -d "$1" ]; then
    echo "Error: Directory '$1' does not exist"
    exit 1
fi

# Check if ffmpeg is installed
if ! command -v ffmpeg &> /dev/null; then
    echo "Error: ffmpeg is required but not installed"
    exit 1
fi

# Create a temporary file with the list of MP3 files
TEMP_FILE=$(mktemp)
find "$1" -type f -name "*.mp3" | sort > "$TEMP_FILE"

# Check if any MP3 files were found
if [ ! -s "$TEMP_FILE" ]; then
    echo "No MP3 files found in directory '$1'"
    rm "$TEMP_FILE"
    exit 1
fi

# Create output filename based on directory name
OUTPUT_FILE="merged_$(basename "$1").mp3"

echo "Merging MP3 files into $OUTPUT_FILE..."

# Create a concat file for ffmpeg
CONCAT_FILE=$(mktemp)
while read -r file; do
    echo "file '$file'" >> "$CONCAT_FILE"
done < "$TEMP_FILE"

# Merge the files using ffmpeg
ffmpeg -f concat -safe 0 -i "$CONCAT_FILE" -c copy "$OUTPUT_FILE"

# Clean up
rm "$TEMP_FILE" "$CONCAT_FILE"

echo "Done! Merged file saved as $OUTPUT_FILE"