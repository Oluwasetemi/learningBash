#!/bin/bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# Check if nvm is available
if ! command -v nvm &> /dev/null || ! nvm --version &> /dev/null; then
    echo "Error: nvm is not installed or not available in the current shell. Please install or source nvm before running this script."
    exit 1
fi


nvm_use() {
    # Check if version argument is provided
    if [ -z "$1" ]; then
        echo "Error: Node.js version argument is required"
        echo "Usage: nvm_use <node_version>"
        return 1
    fi

    NODE_NEW=$1

    # Get the list of globally installed packages in the current version
    echo "Getting list of current global packages..."
    PREVIOUS_PACKAGES=$(npm ls --location=global --depth=0 --parseable | grep "/node_modules/" | sed 's|.*/node_modules/||') || {
        echo "Error: Failed to get list of current packages"
        return 1
    }

    # Switch Node.js version
    echo "Switching to Node.js version ${NODE_NEW}..."
    if ! nvm use "${NODE_NEW}"; then
        echo "Error: Failed to switch to Node.js version ${NODE_NEW}"
        return 1
    fi

    # Get list of packages in new version
    CURRENT_PACKAGES=$(npm ls --location=global --depth=0 --parseable | grep "/node_modules/" | sed 's|.*/node_modules/||') || {
        echo "Error: Failed to get list of packages in new version"
        return 1
    }

    # Install missing packages
    echo "Installing missing packages..."
    for PACKAGE in ${PREVIOUS_PACKAGES}; do
        if ! echo "$CURRENT_PACKAGES" | grep -q "^${PACKAGE}$"; then
            echo "Installing ${PACKAGE}..."
            if ! npm install --location=global "${PACKAGE}"; then
                echo "Warning: Failed to install ${PACKAGE}"
            fi
        fi
    done

    echo "Package transfer complete"
    return 0
}

# Execute the function with provided argument
if [[ $# -eq 0 ]]; then
    echo "Error: Please provide a Node.js version"
    echo "Usage: $0 <node_version>"
    exit 1
fi

nvm_use "$1" || exit 1
