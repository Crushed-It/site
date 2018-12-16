.PHONY: build pack

TAG?=$(shell git rev-list HEAD --max-count=1 --abbrev-commit)
export TAG

dev:
# Start our dev server
	hugo server -D

deploy:
# Deploy to our GitHub Pages
	sh ./deploy.sh
