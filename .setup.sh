#!/usr/bin/env bash
set -euo pipefail

# Colors (optional, for clarity)
GRAY='\033[1;30m'
NC='\033[0m'

##############################################################
# Setup the dotfile symlinks
##############################################################

# Capture the current directory (your dotfiles repo)
current_dir=$(pwd)

# Move into the home directory
pushd "$HOME" >/dev/null

# List of files to symlink — easy to add more later
files_to_link=(
  .claude
)

# Loop through each file and link it
for file in "${files_to_link[@]}"; do
  echo -e "${GRAY}••••••• symlinking $current_dir/$file -> $HOME/$file ${NC}"

  # Remove any existing file/symlink/directory at destination
  rm -rf "$HOME/$file"

  # Create a symbolic link from repo to home
  ln -sfn "$current_dir/$file" "$HOME/$file"
done

# Return to the original directory
popd >/dev/null

echo "✅ Symlinking complete!"
