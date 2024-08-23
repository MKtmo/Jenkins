#!/bin/bash
set -e
echo "Déploiement sur l'environnement de production..."
docker-compose -f docker-compose-production.yml up -d
echo "Déploiement terminé sur la production."
