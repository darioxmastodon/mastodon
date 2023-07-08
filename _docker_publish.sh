#!/bin/bash
DOCKER_BUILDKIT=1 docker build -t mastodon-dariox:latest .
docker tag mastodon-dariox:latest ktwrd/mastodon-dariox:latest
docker push ktwrd/mastodon-dariox:latest
