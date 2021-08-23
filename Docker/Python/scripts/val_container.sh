#!/bin/sh  
    echo 
    echo "Internal Container Validation"
    echo 
    echo "Listing Hardware Specs" 
    echo "-----------------------"   
    lspci 
    echo
    echo
    echo
    echo "Listing Software Specs" 
    echo "-----------------------"   
    echo "OS Version:" 
    cat /etc/os-release  
    echo  
    echo
    echo "Kernel Version:" 
    uname -r 
    echo 


