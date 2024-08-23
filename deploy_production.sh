#!/bin/bash

echo "Deployment production environment..."

docker-compose -f docker-compose.production.yml up -d

echo "Deployment to production complete."
