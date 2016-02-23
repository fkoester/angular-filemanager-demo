FROM node:4

RUN git clone https://github.com/fkoester/angular-filemanager.git

WORKDIR angular-filemanager

RUN git checkout embeddable

RUN npm install --silent http-server

COPY *.html ./

COPY main.css ./

CMD node_modules/.bin/http-server

EXPOSE 8080
