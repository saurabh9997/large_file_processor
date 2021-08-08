FROM postgres:latest
ENV POSTGRES_PASSWORD=password
ENV POSTGRES_USER=admin
ENV POSTGRES_DB=postman
COPY create_fixtures.sql /docker-entrypoint-initdb.d/create_fixtures.sql

FROM python:latest
COPY . /large_file_processor
WORKDIR /large_file_processor
RUN pip3 --no-cache-dir install -r requirements.txt
EXPOSE 5000
ENTRYPOINT ["python3"]
CMD ["code/api.py"]