FROM bobrik/curator

LABEL maintainer="Myroslav Mail<myroslavmail@ukr.net>"

RUN apt-get update && apt-get install -y libltdl7 && rm -rf /var/lib/apt/lists/*
RUN apk update \
&& apk upgrade \
&& rm /var/cache/apk/*
