#!/bin/bash

echo "----------------- STARTING CLEANUP -----------------"

# 1. Stop and remove the Docker container
echo "Stopping and removing the Django container..."
sudo docker stop notes-app 2>/dev/null || true
sudo docker rm notes-app 2>/dev/null || true

# 2. Remove the Docker image
echo "Deleting the Docker image..."
sudo docker rmi notes-app:latest 2>/dev/null || true

# 3. Delete the cloned code directory
echo "Removing the application folder..."
rm -rf django-notes-app

# 4. Optional: Clean up unused Docker resources
echo "Cleaning up dangling Docker layers..."
sudo docker system prune -f

echo "----------------- ENVIRONMENT IS FRESH -----------------"
