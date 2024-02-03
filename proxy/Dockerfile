FROM registry.suse.com/bci/python:latest
WORKDIR /code
ENV FLASK_ENV=development
#RUN apk add --no-cache gcc musl-dev linux-headers
COPY requirements.txt requirements.txt
COPY docker-entrypoint.sh /usr/local/bin/
RUN pip install -r requirements.txt
EXPOSE 5000
COPY . .
ENTRYPOINT ["docker-entrypoint.sh"]
