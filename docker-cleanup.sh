#!/bin/bash
# Docker full cleanup script to reclaim disk space

# Remove stopped containers
docker container prune -f

# Remove dangling images
docker image prune -f

# Remove unused volumes
docker volume prune -f

# Remove unused networks
docker network prune -f

# Remove unused services (if Docker Swarm is used)
docker service prune -f

# Remove unused images, containers, networks, and build cache
docker system prune -a -f --volumes
