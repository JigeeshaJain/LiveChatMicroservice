FROM ubuntu:18.04
RUN apt update; apt install -y gnupg2
MAINTAINER Jigeesha S Jain <jjain1@binghamton.edu>
RUN apt install -y python3-pip
RUN mkdir web
RUN mkdir web/app
ADD app /web/app/
ADD requirements.txt run.py /web/
RUN pip3 install -r /web/requirements.txt
ENTRYPOINT ["python3", "/web/run.py"]