FROM ubuntu:20.04

LABEL version="1.0" \ 
      name="Showcase_Container_Python" \
      maintainer="Manolo Corte" \
      description="Base image containing ubuntu, python and a virtual environment" \
      build-date="07/08/2021"




USER root

    #Utilities
    
    RUN : \
        && apt-get update \
        && apt-get -y upgrade \
        && apt-get install -y pciutils \
        && :

      # FOR PYTHON 

        RUN : \
            && apt-get -y install libpq-dev python3.8-dev \
            && apt-get -y install python3-pip curl \
            && apt-get install -y python3.8 \
            && :

        
    

WORKDIR /home/workspace
        
    #RUNNING VIRTUAL ENVIRONMENT
       RUN apt-get install -y python3-venv

       RUN python3.8  -m venv venv

    #Copying Base Image Validation 

       #Copy ubuntu:20.04.txt . 

        ENTRYPOINT : \ 
                && echo \
                && echo \
                && echo Container Initializing, please stand by. . . \
                && sleep 2  \
                && echo \
                && echo \
                && echo Listing Hardware Specs \
                && echo ===========================================   \
                && lspci \
                && sleep 1 \
                && echo Listing Software Specs \
                && echo ===========================================   \
                && echo OS Version: \
                && cat /etc/os-release \ 
                && sleep 1
                && echo \ 
                && echo Kernel Version: \
                && uname -r \
                && echo \ 
                && sleep 1 \
                && echo Python Version: \
                && python --version
                && tail -f /dev/null  \ 
                && : 