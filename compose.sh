#!/usr/bin/env bash

#!/bin/bash
set -e

case "$1" in
    build)
        # Build images based off of the compose file
        docker-compose build
        ;;
    up)
        # Run compose up based on compose file
        docker-compose up -d
        ;;
    start)
        # Start containers based on compose file
        docker-compose start
        ;;
    logs)
        # Follow server logs
        docker-compose logs --no-color
        ;;
    logsf)
        # Follow server logs
        docker-compose logs --no-color --follow
        ;;
    ps)
        # View running containers based off of compose file
        docker-compose ps
        ;;
    stop)
        # Stop containers based off of compose file
        docker-compose stop
        ;;
    rm)
        # Remove containers based off of compose file
        docker-compose rm
        ;;
    kill)
        # Forcibly stop containers based off of compose file
        docker-compose kill
        ;;
    *)
        echo "Usage: ./build.sh {build|create|run|logs|ps|rm|kill}"
        exit 1
        ;;
esac

exit 0
