#!/bin/bash

echo "Deploying to staging environment..."

docker-compose -f docker-compose.staging.yml up -d

echo "Deployment to staging complete."
