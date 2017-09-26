FROM hypriot/rpi-iojs:1.4.1

ADD src /src 

WORKDIR /src 

RUN npm install
RUN npm install lgtv
 
RUN apt-get update && apt-get install -y \
    python \
    python-dev \
    python-pip \
    python-virtualenv 
    #--no-install-recommends && \
    #rm -rf /var/lib/apt/lists/*

RUN apt-get install -y supervisor

RUN pip install wakeonlan \
                fauxmo \
                requests

EXPOSE 80 
EXPOSE 52000

ADD conf/alexa-tv.conf /etc/supervisor/conf.d/alexa-tv.conf

#CMD [ "python", "/src/alexa-tv.py" ]
#CMD [ "python", "/src/example-minimal.py" ]

CMD [ "/usr/bin/supervisord", "-n", "-c", "/etc/supervisor/supervisord.conf" ]
