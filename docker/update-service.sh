#!/bin/bash
# Brukes av GHA til å oppdatere en kjørende service
set -euo pipefail

DOCKER_SERVICE="${1:?Mangler docker service navn}"
RELEASE_TAG="${2:?Mangler release tag}"
FORCE_DEPLOY="${3:-false}"

echo "Deployer $DOCKER_SERVICE:$RELEASE_TAG"

export TAG="$RELEASE_TAG"
docker compose pull "$DOCKER_SERVICE"
docker compose up -d "$DOCKER_SERVICE"
docker compose ps
