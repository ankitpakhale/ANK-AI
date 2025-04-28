# Variables
BACKEND_IMAGE=backend_image
FRONTEND_IMAGE=frontend_image

.PHONY: build-backend build-frontend up down logs-backend logs-frontend

build-backend:
	docker build -t $(BACKEND_IMAGE) -f Dockerfile .

build-frontend:
	docker build -t $(FRONTEND_IMAGE) -f frontend/Dockerfile frontend/

up:
	docker-compose up --build

down:
	docker-compose down

logs-backend:
	docker logs $$(docker-compose ps -q backend)

logs-frontend:
	docker logs $$(docker ps -q --filter ancestor=$(FRONTEND_IMAGE))
