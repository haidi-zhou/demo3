#!/bin/bash
set -e

# Detect OS
OS="$(uname -s)"
case "${OS}" in
    Linux*|Darwin*)
        if ! command -v uv &> /dev/null; then
            echo "uv is not installed. Installing uv..."
            curl -LsSf https://astral.sh/uv/install.sh | sh
            # Add uv to the current path for this script session
            export PATH="$HOME/.local/bin:$PATH"
        fi
        ;;
    CYGWIN*|MINGW32*|MSYS*|MINGW64*)
        # Windows-based git bash
        if ! command -v uv &> /dev/null; then
            echo "uv is not installed. Installing uv on Windows..."
            powershell -ExecutionPolicy ByPass -c "irm https://astral.sh/uv/install.ps1 | iex"
            # Add uv to current path for Windows user profile location
            export PATH="$USERPROFILE/.local/bin:$PATH"
        fi
        ;;
    *)
        echo "Unsupported OS: ${OS}"
        exit 1
        ;;
esac

echo "Syncing project dependencies..."
uv sync

echo "Setup completed successfully! You can run commands using 'uv run <command>'."
