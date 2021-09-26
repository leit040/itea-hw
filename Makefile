.PHONY: stop
stop: ## stop environment
		docker-compose -f ./vendor/leit040/docker-nginx/docker-compose.yml stop
.PHONY: build
build: ## build environment and initialize composer and project dependencies
		docker-compose -f ./vendor/leit040/docker-nginx/docker-compose.yml build
		docker-compose  -f ./vendor/leit040/docker-nginx/docker-compose.yml run --rm php sh -lc 'xoff;COMPOSER_MEMORY_LIMIT=-1 composer install'

.PHONY: up
up: ## spin up environment
		docker-compose -f ./vendor/leit040/docker-nginx/docker-compose.yml  up -d



