FROM 7.3-fpm-alpine3.14
COPY . /usr/src/myapp
WORKDIR /usr/src/myapp
VOLUME [ "/usr/src/myapp/.data/" ]
CMD [ "bash", "./entrypoint.sh" ]
EXPOSE 9000