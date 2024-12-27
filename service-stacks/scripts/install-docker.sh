#!/bin/bash

# Step 1: Download the Docker installation script using curl
curl -fsSL https://get.docker.com -o get-docker.sh

# Step 2: Execute the Docker installation script
sudo sh get-docker.sh

# Optional Steps: Post-installation steps for convenience and security

# Adding your user to the docker group to run docker commands without sudo
sudo usermod -aG docker $USER

# Note: You may need to log out and log back in for this to take effect

# Starting the Docker service (depending on your distro, this might be unnecessary or different)
sudo systemctl start docker

# Ensuring Docker starts on boot
sudo systemctl enable docker

# Displaying Docker version to verify installation
docker --version

# Cleanup: Removing the installation script
rm -f get-docker.sh

# Reminder message for the user
echo "Docker has been installed successfully! You might need to log out and log back in for the 'docker' command to work without 'sudo'."
