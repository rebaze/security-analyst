#!/bin/bash

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Configuration
REPO_URL="https://raw.githubusercontent.com/rebaze/security-analyst/refs/heads/main/security-analyst.md"
TARGET_DIR=".claude/subagents"
TARGET_FILE="security-analyst.md"

echo -e "${GREEN}Installing Security Analyst subagent for Claude Code...${NC}"

# Function to check if command exists
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Function to download file
download_file() {
    local url="$1"
    local output="$2"
    
    if command_exists curl; then
        echo "Using curl to download..."
        curl -fsSL "$url" -o "$output"
    elif command_exists wget; then
        echo "Using wget to download..."
        wget -q "$url" -O "$output"
    else
        echo -e "${RED}Error: Neither curl nor wget is available. Please install one of them.${NC}"
        exit 1
    fi
}

# Create target directory
echo "Creating directory: $TARGET_DIR"
mkdir -p "$TARGET_DIR"

# Download the file
echo "Downloading security-analyst.md..."
download_file "$REPO_URL" "$TARGET_DIR/$TARGET_FILE"

# Verify the file was downloaded
if [ -f "$TARGET_DIR/$TARGET_FILE" ]; then
    echo -e "${GREEN}✅ Successfully installed security-analyst subagent!${NC}"
    echo -e "${YELLOW}Location: $TARGET_DIR/$TARGET_FILE${NC}"
    echo ""
    echo "You can now use the security-analyst subagent in Claude Code."
    echo "Example usage: @security-analyst analyze this code for vulnerabilities"
else
    echo -e "${RED}❌ Installation failed. File not found at $TARGET_DIR/$TARGET_FILE${NC}"
    exit 1
fi