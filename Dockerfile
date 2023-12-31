FROM rust:latest
RUN apt-get update && apt-get install -y libgtk-3-dev libwebkit2gtk-4.0-dev
RUN cargo install cargo-web
RUN mkdir -pv /app
WORKDIR /app
COPY . .
ENTRYPOINT  ["/entrypoint.sh"]