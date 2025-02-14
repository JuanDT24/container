FROM docker:latest
WORKDIR /app
COPY . /app
RUN apk add --no-cache bash git
RUN apk add --no-cache alpine-base
CMD ["sh", "./benchmark.sh"]