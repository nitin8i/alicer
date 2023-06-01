FROM debian:11

RUN apt-get update -y && apt-get upgrade -y

RUN apt-get install curl ffmpeg wget git python3-pip sudo -y

RUN curl -sL https://deb.nodesource.com/setup_18.x | bash -

RUN apt-get install -y nodejs

RUN git clone https://github.com/Pranav-Saraswat/Ridhit Carbon

RUN cd Carbon && pip3 install -U -r requirements.txt

CMD cd Carbon && bash start.sh
