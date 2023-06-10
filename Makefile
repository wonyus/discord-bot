build-local:
	docker build --tag wonyus/bot-discord .

start-local:
	docker run --env-file .env --dns 8.8.8.8 --dns 8.8.4.4 wonyus/bot-discord