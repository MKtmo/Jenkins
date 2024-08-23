#!/bin/bash
set -e
echo "Déploiement sur l'environnement de staging..."
docker-compose -f docker-compose-staging.yml up -d
echo "Déploiement terminé sur le staging."
