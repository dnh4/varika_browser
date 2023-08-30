FROM rust:latest
RUN apt-get update && apt-get install -y libgtk-3-dev
RUN mkdir -pv /app
WORKDIR /app
COPY . .
CMD ["cargo", "run"]
