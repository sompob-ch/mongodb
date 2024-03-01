FROM mongo:6.0

ENV MONGO_INITDB_ROOT_USERNAME=admin
ENV MONGO_INITDB_ROOT_PASSWORD=password

RUN mkdir -p /seed-data /docker-entrypoint-initdb.d
COPY /sample-data /seed-data
COPY import-script.sh /docker-entrypoint-initdb.d/

RUN chmod +x /docker-entrypoint-initdb.d/import-script.sh

EXPOSE 27017
