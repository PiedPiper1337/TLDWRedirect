export NAME = tldw_redirect
export SECRETS = `pwd`

prebuild:
	./activator dist

build:
	docker build -t="bmzhao/$(NAME):latest" .

run:
	docker run --name="$(NAME)" -it -p 443:443 -v $(SECRETS)/secrets:/root/secrets:ro --rm "bmzhao/$(NAME):latest"

remove:
	docker stop "$(NAME)" && docker rm "$(NAME)"

push:
	./activator dist && docker build -t="bmzhao/$(NAME):latest" . && docker push "bmzhao/$(NAME):latest"