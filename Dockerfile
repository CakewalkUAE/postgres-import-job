FROM postgres:17-alpine
WORKDIR /app
RUN apk add --no-cache bash tzdata ca-certificates
COPY . .
RUN chmod +x run.sh
ENTRYPOINT ["./run.sh"]
