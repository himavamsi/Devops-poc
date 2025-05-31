#!/bin/bash

Package_Name="tree"

if ! dpkg -s "$Package_Name" >/dev/null 2>&1; then
    echo "Package $Package_Name is not installed. Do you want to install? (y/n)"
    read -r reply

    if [[ "$reply" == "y" ]]; then
        sudo apt-get update
        sudo apt-get install -y "$Package_Name"
    else
        echo "Package is not installed."
    fi
else
    echo "Package $Package_Name is already installed."
fi
