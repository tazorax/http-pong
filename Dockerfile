FROM golang:1.24-alpine AS builder

RUN apk --no-cache --no-progress add make \
    && rm -rf /var/cache/apk/*

WORKDIR /app

COPY go.mod go.sum ./

RUN go mod download

COPY . .

RUN make build

FROM scratch

ENV PORT=80

COPY --from=builder /app/http-pong /http-pong

ENTRYPOINT ["/http-pong"]
EXPOSE 80

