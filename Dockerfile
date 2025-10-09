FROM postgres:17
WORKDIR /app

RUN apt-get update && apt-get install -y pgcopydb

COPY . .
RUN chmod +x run.sh
ENTRYPOINT ["./run.sh"]
