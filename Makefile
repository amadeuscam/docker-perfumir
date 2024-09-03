# Define the URL to open and the delay before opening
URL := http://localhost:3000
SLEEP_TIME := 5  # Adjust sleep time based on your services

# The default target
.PHONY: up
up: docker-up open-url

# Target to bring up the Docker Compose services
.PHONY: docker-up
docker-up:
	docker-compose up -d

# Target to open the URL after services are up
.PHONY: open-url
open-url:
	@echo "Waiting for services to start..."
	@sleep $(SLEEP_TIME)
	@echo "Opening $(URL)..."
	@xdg-open $(URL) || open $(URL) || start $(URL) # Handle Linux, macOS, and Windows

# Target to bring down the Docker Compose services
.PHONY: down
down:
	docker-compose down
