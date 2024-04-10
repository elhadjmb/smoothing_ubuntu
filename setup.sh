#!/bin/bash

# Update and upgrade the system
echo "Updating and upgrading your system..."
sudo apt-get update && sudo apt-get upgrade -y

# Install Python3 and pip if they are not installed
echo "Installing Python3 and pip..."
sudo apt-get install python3 python3-pip -y

# Install Nala
echo "Installing Nala..."
sudo apt-get install nala -y

# Check if Snap is installed and install it if necessary
if ! command -v snap &> /dev/null
then
    echo "Snap is not installed. Installing Snap..."
    sudo apt-get install snapd -y
    # Ensure Snap’s main service is enabled and running
    sudo systemctl enable --now snapd.socket
else
    echo "Snap is already installed."
fi

# Check if Flatpak is installed and install it if necessary
if ! command -v flatpak &> /dev/null
then
    echo "Flatpak is not installed. Installing Flatpak..."
    sudo apt-get install flatpak -y
    # Add the Flathub repository, which is the major repository for Flatpak apps
    flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
else
    echo "Flatpak is already installed."
fi

# Install ClamAV
echo "Installing ClamAV..."
sudo apt-get install clamav clamav-daemon -y

# Run the Python setup script
echo "Running the setup script..."
python3 -m pip install termcolor
chmod +x installs removes updates
sudo cp installs removes updates /usr/local/bin

echo "Setup complete!"
