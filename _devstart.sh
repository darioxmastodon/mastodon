#!/bin/bash
source ./.env.production
LOCAL_DOMAIN=dev.dariox.club
SMTP_FROM_ADDRESS=mastodon.dev@dariox.club
RAILS_ENV=development
bash -c "rm -f /tmp/pids/mastodon-server-dev.pid; bundle exec rails s -p 3947"