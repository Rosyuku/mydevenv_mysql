FROM mysql:8.0.20
LABEL maintainer="KW_Rosyuku (https://twitter.com/KW_Rosyuku)"
LABEL version="0.1.0"

#default db setting
COPY ./config/mysql/initdb.d/* /docker-entrypoint-initdb.d/

#mysql setting
COPY ./config/mysql/conf.d/* /etc/mysql/conf.d/