#!/bin/sh

# This script installs custom XKB files into /usr/share/X11/xkb/
# Run this script with sudo or as the root user.

set -e

# Ensure the script is run as root
if [[ $EUID -ne 0 ]]; then
  echo "❌ This script must be run as root. Please use sudo."
  exit 1
fi

# Define the base directory for XKB files
XKB_BASE="/usr/share/X11/xkb"

# Define the list of source files and their corresponding destinations
files_to_copy=(
  "keycodes/kk_evdev"
  "symbols/kk_pc"
  "symbols/kk_en"
  "symbols/kk_ru"
  "rules/kk.xml"
  "rules/kk.lst"
)

# Iterate over the associative array and copy files
for src in "${files_to_copy[@]}"; do
  dest="${XKB_BASE}/${src}"
  
  # Check if the source file exists
  if [[ ! -f "$src" ]]; then
    echo "❌ Source file '$src' not found. Skipping."
    continue
  fi

  echo $dest
  # Create the destination directory if it doesn't exist
  mkdir -p "$(dirname "$dest")"

  # Copy the file
  cp -vf "$src" "$dest"

  # Set appropriate permissions
  chmod 644 "$dest"
done

echo "✅ All files have been copied successfully."

# Reload xkb rules
udevadm trigger --subsystem-match=input --action=change
