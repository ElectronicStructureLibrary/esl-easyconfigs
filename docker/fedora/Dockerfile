FROM fedora:latest

RUN groupadd -g 9999 drFaustroll && useradd -r -u 9999 -g drFaustroll drFaustroll &&  mkdir /home/drFaustroll && chown -R \
drFaustroll:drFaustroll /home/drFaustroll && dnf upgrade -y && dnf -y install Lmod which python2 python2-pip && pip2 install easybuild pep8 

WORKDIR /home/drFaustroll
USER drFaustroll
