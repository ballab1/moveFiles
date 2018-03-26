ARG FROM_BASE=perl-carton:20180325
FROM $FROM_BASE

# name and version of this docker image
ARG CONTAINER_NAME=movefiles
ARG CONTAINER_VERSION=1.0.7

LABEL org_name=$CONTAINER_NAME \
      version=$CONTAINER_VERSION 

# set to non zero for the framework to show verbose action scripts
ARG DEBUG_TRACE=0


COPY moveFiles.pl /usr/src/myapp
CMD ["perl", "moveFiles.pl"]
