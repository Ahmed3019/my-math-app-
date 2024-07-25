#!/bin/bash

# Variables
DOCKER_IMAGE_NAME="my-math-app"
DOCKER_CONTAINER_NAME="my-math-container"
GITHUB_REPO_URL="https://github.com/Ahmed3019/my-math-app-.git"

# Build the Docker image
echo "Building the Docker image..."
docker build -t $DOCKER_IMAGE_NAME .

# Run the Docker container
echo "Running the Docker container..."
docker run -d - it --name $DOCKER_CONTAINER_NAME -p 6000:56000 $DOCKER_IMAGE_NAME /bin/bash 

# Push to GitHub
echo "Pushing to GitHub repository..."
# Initialize a new Git repository (if not already initialized)
if [ ! -d .git ]; then
    git init
    git remote add origin $GITHUB_REPO_URL
    git checkout -b main
fi

# Add changes and commit
git add .
git commit -m "Initial commit of the Math API application"

# Push to the remote repository
git push -u origin main

echo "Done!"
