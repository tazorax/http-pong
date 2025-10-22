# http-pong

🏓 An HTTP server that responds and logs each request in the standard output.

## Run

To start the server with Docker, listening on port 8080:
```
docker run --publish 8080:80 --rm tazorax/http-pong
```

## Samples

```console
$ docker run -p 8080:80 --rm tazorax/http-pong 
2025/10/22 12:30:27 Listening on :80
2025/10/22 12:30:37 Request
GET /hello HTTP/1.1
Host: localhost:8080
Accept: */*
User-Agent: curl/8.7.1


--------------------------------------------------------------------------------
```

```console
$ curl http://localhost:8080/hello
GET /hello HTTP/1.1
Host: localhost:8080
Accept: */*
User-Agent: curl/8.7.1
```
