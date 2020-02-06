.PHONY: up
up:
	CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o main . && docker build -t docker-go-scratch . && rm main 
.PHONY: down
down:
	echo "hola viteh"
