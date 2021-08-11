FROM gcc

COPY . /usr/src/app
WORKDIR /usr/src/app

RUN g++ -o app cloud.c++

CMD "./app"
