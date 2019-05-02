FROM bobrik/curator

LABEL maintainer="Myroslav Mail<myroslavmail@ukr.net>"
RUN pwd
RUN ls -la
RUN whoami
ENTRYPOINT ["curator_one"]
