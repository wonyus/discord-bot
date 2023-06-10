build-local:
	docker build --tag bot-discord .

start-local:
	docker run --env-file .env --dns 8.8.8.8 --dns 8.8.4.4 bot-discord