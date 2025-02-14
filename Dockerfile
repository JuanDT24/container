FROM docker:latest
WORKDIR /app
COPY . /app
RUN apk add --no-cache bash git
CMD ["sh", "./benchmark.sh"]