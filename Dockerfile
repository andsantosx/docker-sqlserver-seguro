FROM mcr.microsoft.com/mssql/server:2019-latest

ENV ACCEPT_EULA=Y
ENV SA_PASSWORD=YourStrong!Passw0rd

COPY create_ddl_dml-68ad28311c602.sql /tmp/script.sql

USER root
RUN apt-get update && apt-get install -y curl apt-transport-https gnupg

RUN curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add - \
    && curl https://packages.microsoft.com/config/ubuntu/20.04/prod.list > /etc/apt/sources.list.d/msprod.list

RUN apt-get update && ACCEPT_EULA=Y apt-get install -y mssql-tools unixodbc-dev

ENV PATH="$PATH:/opt/mssql-tools/bin"

RUN (/opt/mssql/bin/sqlservr &) \
    && sleep 20 \
    && /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P YourStrong!Passw0rd -i /tmp/script.sql -c ";" \
    && pkill sqlservr

EXPOSE 1433

CMD ["/opt/mssql/bin/sqlservr"]
