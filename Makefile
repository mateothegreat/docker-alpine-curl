NAME	= mateothegreat/docker-alpine-curl
ALIAS	= docker-alpine-curl
VERSION	= 1.0.0

all:	build

build:

	@echo "Building an image with the current tag $(NAME):$(VERSION).."
	
	docker build 	--rm 	\
					--tag $(NAME):$(VERSION) \
					.

run: 

	docker run -it --rm $(NAME):$(VERSION) -vv https://google.com

shell:

	docker run 	--rm -it 				                        \
				--name $(ALIAS)                                 \
				--entrypoint /bin/sh                            \
				$(NAME):$(VERSION)

tag_latest:

	docker tag $(NAME):$(VERSION) $(NAME):latest

push:

	docker push $(NAME)