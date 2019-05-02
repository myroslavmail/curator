FROM bobrik/curator

LABEL maintainer="Myroslav Mail<myroslavmail@ukr.net>"
USER root
RUN apk update && apk upgrade && rm /var/cache/apk/*
USER jenkins
