FROM postgres 
ENV POSTGRES_PASSWORD postgres 
ENV POSTGRES_DB testdb 
COPY init.sql /docker-entrypoint-initdb.d/
RUN localedef -i es_AR -c -f UTF-8 -A /usr/share/locale/locale.alias es_AR.UTF-8
ENV LANG es_AR.utf8