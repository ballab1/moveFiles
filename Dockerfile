ARG FROM_BASE=${DOCKER_REGISTRY:-}${CONTAINER_OS:-}perl-carton:${BASE_TAG:-latest}
FROM $FROM_BASE

# name and version of this docker image
ARG CONTAINER_NAME=movefiles

# set to non zero for the framework to show verbose action scripts
#    (0:default, 1:trace & do not cleanup; 2:continue after errors)
ENV DEBUG_TRACE=0


COPY moveFiles.pl /usr/src/myapp
CMD ["perl", "moveFiles.pl"]
