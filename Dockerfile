FROM gcc:14 AS builder

WORKDIR /app

RUN apt-get update && apt-get install -y \
    gcc-multilib \
    libc6-dev-i386 \
    && rm -rf /var/lib/apt/lists/*

COPY . .

RUN make clean && make build

FROM debian:stable-slim

WORKDIR /app
COPY --from=builder /app/stopnje_prevajanja /app/stopnje_prevajanja

CMD ["./stopnje_prevajanja"]