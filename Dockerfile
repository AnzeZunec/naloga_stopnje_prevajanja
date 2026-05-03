FROM debian:stable-slim AS builder

WORKDIR /app

RUN apt-get update && apt-get install -y \
    gcc \
    make \
    cpp \
    binutils \
    gcc-multilib \
    libc6-dev-i386 \
    && rm -rf /var/lib/apt/lists/*

COPY . .

RUN make clean
RUN make build

FROM debian:stable-slim

WORKDIR /app
COPY --from=builder /app/stopnje_prevajanja /app/stopnje_prevajanja

CMD ["./stopnje_prevajanja"]
