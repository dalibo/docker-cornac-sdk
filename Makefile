NAME=dalibo/cornac-sdk
VERSION=latest

default:

build:
	docker build -t $(NAME):$(VERSION) .

clean:
	docker images --quiet $(NAME) | xargs --no-run-if-empty --verbose docker rmi -f
