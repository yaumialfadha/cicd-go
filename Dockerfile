FROM golang:1.17-alpine

WORKDIR /app

COPY go.mod ./
COPY *.go ./
COPY static ./static

RUN go build -o /cicd-go

EXPOSE 3000

CMD ["/cicd-go"]