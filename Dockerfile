FROM golang:latest

WORKDIR /app
ENV PORT 8080
COPY /go/src/webserver .

RUN go build -o main .

EXPOSE $PORT
CMD ["./main"] 
