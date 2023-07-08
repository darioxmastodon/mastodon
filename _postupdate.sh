#!/bin/bash
echo ""
echo "================ Migrating Database"
RAILS_ENV=production SKIP_POST_DEPLOYMENT_MIGRATIONS=true docker-compose run --rm web bundle exec rake db:migrate
echo ""
echo "================ Precompiling Assets"
RAILS_ENV=production docker-compose run --rm web bundle exec rake assets:precompile
echo ""
echo "================ Post-Migration Database"
RAILS_ENV=production docker-compose run --rm web bundle exec rails db:migrate
