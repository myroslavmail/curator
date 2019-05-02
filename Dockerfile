FROM bobrik/curator

LABEL maintainer="Myroslav Mail<myroslavmail@ukr.net>"

RUN sudo apk update && sudo apk upgrade && sudo rm /var/cache/apk/*
