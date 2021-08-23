#!/bin/sh  
    echo 
    echo
    echo Python Version: 
    echo "${python3 --version}"
    echo 
    echo ---------
    echo 
    echo Python packages in requirements:
    echo "$(cat requirements.txt)"
    echo ---------
    echo 
    echo Python packages installed:
    echo "$(cat packagesInstalled)""