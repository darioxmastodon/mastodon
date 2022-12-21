#!/bin/bash
echo ""
echo "================ Migrating Database"
docker-compose run --rm web bundle exec rake db:migrate
echo ""
echo "================ Precompiling Assets"
docker-compose run --rm web bundle exec rake assets:precompile
