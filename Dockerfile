ARG CODE_VERSION=perl-carton:20180207
FROM $CODE_VERSION

ENV VERSION=1.0.0
LABEL version=$VERSION

COPY moveFiles.pl /usr/src/myapp
CMD ["perl", "moveFiles.pl"]
