FROM ubuntu:20.04

LABEL version="1.0" \ 
      name="Showcase_Container_Python" \
      maintainer="Manolo Corte" \
      description="Base image containing ubuntu, and R" \
      build-date="07/08/2021"


ENV TZ=Europe/Madrid
ENV DEBIAN_FRONTEND=noninteractive 



USER root

    #Utilities
    
    RUN : \
        && apt-get update \
        && apt-get -y upgrade \
        && apt-get install -y pciutils \
        && :


    # FOR R
    #------------------

    #Establishing TZ

        RUN : \
            && apt-get install -y tzdata \
            && echo "Europe/Madrid" > /etc/timezone \
            && dpkg-reconfigure -f noninteractive tzdata \
            && : 


      #Copying R repository locally and installing it

        RUN : \ 
       # && install dirmngr gnupg apt-transport-https ca-certificates software-properties-common \
       # && apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9 \ 
       # && add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu focal-cran40/' \
        && apt-get install -y r-base \
        && : 

WORKDIR /home/workspace
        
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
                && sleep 1 \
                && echo \ 
                && echo Kernel Version: \
                && uname -r \
                && sleep 1 \
                && echo \ 
                && echo Listing R info\
                && echo ===========================================   \
                && R --version \
                && : 