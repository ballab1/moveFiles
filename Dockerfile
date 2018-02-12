ARG FROM_BASE=perl-carton:20180210
FROM $FROM_BASE

# version of this docker image
ARG CONTAINER_VERSION=1.0.0 
LABEL version=$CONTAINER_VERSION  

COPY moveFiles.pl /usr/src/myapp
CMD ["perl", "moveFiles.pl"]
