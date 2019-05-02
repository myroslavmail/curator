FROM bobrik/curator

LABEL maintainer="Myroslav Mail<myroslavmail@ukr.net>"

RUN apk update && apk upgrade && rm /var/cache/apk/*
