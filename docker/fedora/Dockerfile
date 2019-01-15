FROM fedora:latest

RUN groupadd -g 9999 drFaustroll && useradd -r -u 9999 -g drFaustroll drFaustroll &&  mkdir /home/drFaustroll && chown -R \
drFaustroll:drFaustroll /home/drFaustroll && dnf upgrade -y && dnf -y install which python2 python2-pip && pip2 install easybuild 

WORKDIR /home/drFaustroll
USER drFaustroll
