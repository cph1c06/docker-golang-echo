FROM golang:latest
RUN go get -u github.com/labstack/echo/...
WORKDIR /app
COPY . .
RUN go build -o main .
EXPOSE 123
CMD ["./main"]
