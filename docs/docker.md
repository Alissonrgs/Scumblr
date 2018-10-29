# Docker environment for Scumblr 2.0

This is a docker configuration for Scumblr 2.0 suitable for developer use

## Quick start

1. Run `docker-compose up --build` for build image.
2. Run `docker-compose run --rm scumblr rake:db:structure:load` for create database
3. Run `docker-compose up`, after services are started, visit [http://localhost:3000](http://localhost:3000)