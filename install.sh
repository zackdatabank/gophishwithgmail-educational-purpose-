#!/bin/bash

# --- CONFIGURATION ---
GOPHISH_VERSION="v0.12.1"
GOPHISH_ZIP="gophish-$GOPHISH_VERSION-linux-64bit.zip"
INSTALL_DIR="$HOME/gophish"

echo "--- Starting Gophish Installation ---"

# 1. Update and Install Dependencies
echo "[1/5] Updating system and installing unzip..."
sudo apt update && sudo apt upgrade -y
sudo apt install unzip -y

# 2. Create Directory
echo "[2/5] Creating directory at $INSTALL_DIR..."
mkdir -p "$INSTALL_DIR"
cd "$INSTALL_DIR"

# 3. Download and Extract
echo "[3/5] Downloading Gophish $GOPHISH_VERSION..."
wget "https://github.com/gophish/gophish/releases/download/$GOPHISH_VERSION/$GOPHISH_ZIP"
unzip "$GOPHISH_ZIP"
chmod +x gophish

# 4. Configure for Remote Access (0.0.0.0)
echo "[4/5] Updating config.json to allow remote access on port 3333..."
if [ -f config.json ]; then
    # Use sed to replace 127.0.0.1 with 0.0.0.0 for the admin_server
    sed -i 's/127.0.0.1:3333/0.0.0.0:3333/g' config.json
else
    echo "Error: config.json not found!"
    exit 1
fi

# 5. Final Instructions
echo "--------------------------------------------------------"
echo "INSTALLATION COMPLETE"
echo "--------------------------------------------------------"
echo "To start Gophish, run:"
echo "cd $INSTALL_DIR && sudo ./gophish"
echo ""
echo "REMINDER: Look for the 'admin' password in the first run output."
echo "Ensure your GCP Firewall allows Port 3333 and Port 80."
echo "--------------------------------------------------------"
