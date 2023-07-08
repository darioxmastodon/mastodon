#!/bin/bash
./_build.sh
./_restart.sh
./_postupdate.sh
docker-compose restart
./_postupdate.sh
