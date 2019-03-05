FROM uhub.service.ucloud.cn/wxyz/golang:1.11.1-ci1

ADD . /go/src/app

WORKDIR /go/src/app

RUN GOOS=linux GOARCH=386 go build -v -o /go/src/app/jenkins-app

CMD ["./jenkins-app"]
