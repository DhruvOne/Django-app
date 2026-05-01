
# #!/bin/bash

# --- DevOps Disk Cleanup Script ---

echo "Starting system cleanup..."

# 1. Clear APT cache (fixes the error in image_677a43.png)
echo "Cleaning apt cache..."
sudo apt-get clean
sudo apt-get autoclean -y

# 2. Remove unused dependencies
echo "Removing orphaned packages..."
sudo apt-get autoremove -y

# 3. Vacuum system logs older than 1 day
echo "Clearing old system logs..."
sudo journalctl --vacuum-time=1d

# 4. Check remaining space
echo "-------------------------------"
echo "Current Disk Usage:"
df -h | grep '^/dev/'
echo "-------------------------------"

echo "Cleanup complete!"
