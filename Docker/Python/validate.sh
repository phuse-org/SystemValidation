#!/bin/sh  
    echo "=========================================== " 
    echo "R Validation Group " 
    echo "This is a WIP script which calls "
    echo "the other modules "
    echo "=========================================== " 
    docker build -t python_image . 
    docker run -d --name python_container python_image
    echo "=========================================== "
    echo 
    echo
    echo "Validating base image"
    docker pull  ubuntu:20.04
    docker inspect ubuntu:20.04
    echo 
    echo
    echo "=========================================== " 
    echo "+++++++++++++++++++++++++++++++++++++++++++"
    echo "=========================================== "
    echo 
    echo
    echo "Validating image" 
    docker inspect python_image
    echo 
    echo
    echo "=========================================== " 
    echo "+++++++++++++++++++++++++++++++++++++++++++"
    echo "=========================================== " 
    echo 
    echo
    echo "Validating container from the outside" 
    docker inspect python_container
    echo 
    echo 
    echo 
    docker exec -it python_container ./val_container.sh run 
    docker exec -it python_container ./val_python.sh run 
    echo 
    echo 
    docker stop python_container
    docker rm python_container
    echo   'Validation suite finished'
    echo "=========================================== "
      
