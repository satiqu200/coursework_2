# use a node base image
FROM node:7-onbuild

# set maintainer
LABEL maintainer "satiqu200@caledonian.ac.uk"

# set a health check
HEALTHCHECK --interval=5s \
            --timeout=5s \
            CMD curl -f http://40.76.85.175:80 || exit 1

# tell docker what port to expose
EXPOSE 80

FROM node:6.14.2
EXPOSE 8080
COPY server.js .
CMD node server.js
