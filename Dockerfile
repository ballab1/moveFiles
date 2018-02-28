ARG FROM_BASE=perl-carton:20180210
FROM $FROM_BASE

# name and version of this docker image
ENV CONTAINER_NAME=movefiles
ARG CONTAINER_VERSION=1.0.0

LABEL org_name=$CONTAINER_NAME
LABEL version=$CONTAINER_VERSION 

# set to non zero for the framework to show verbose action scripts
ARG DEBUG_TRACE=0


COPY moveFiles.pl /usr/src/myapp
CMD ["perl", "moveFiles.pl"]
