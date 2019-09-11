NAME=dalibo/cornac-sdk

default:

debian centos7:
	docker build -t $(NAME):$@ -f Dockerfile.$@ .

shell-%: %
	docker run --rm -it --name $* -v $(PWD):/workspace -w /workspace $(NAME):$* /bin/bash

clean:
	docker images --quiet $(NAME) | xargs --no-run-if-empty --verbose docker rmi -f
