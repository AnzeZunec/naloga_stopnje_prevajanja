FROM gcc:14 AS builder

WORKDIR /app
COPY . .

RUN make clean && make build

FROM debian:stable-slim

WORKDIR /app
COPY --from=builder /app/stopnje_prevajanja /app/stopnje_prevajanja

CMD ["./stopnje_prevajanja"]
