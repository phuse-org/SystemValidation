FROM ubuntu:20.04 as base

LABEL version="1.0" \ 
      name="Showcase_Container_Python" \
      maintainer="Manolo Corte" \
      description="Base image containing ubuntu, python and a virtual environment" \
      build-date="23/08/2021"




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

        
FROM base as build  

WORKDIR /home/workspace
        
    #RUNNING VIRTUAL ENVIRONMENT
       RUN apt-get install -y python3-venv

       RUN python3.8  -m venv venv

       #Block to copy app / install dependencies
       #Installing example packages 
        COPY ./requirements.txt .
        RUN pip3 install -r requirements.txt


FROM build as validation

WORKDIR /home/workspace/validation_utils

    #Copying Base Image Validation 

    RUN pip freeze > packagesInstalled.txt
    COPY ./scripts/* /home/workspace/validation_utils/
    #COPY ./scripts/val_container.sh   /home/workspace/validation_utils/
    RUN : \
      && chmod 777 val_python.sh \ 
      && chmod 777 val_container.sh \
      && : 


        ENTRYPOINT : \ 
                && tail -f /dev/null  \ 
                && :  