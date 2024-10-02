#!/bin/sh
CONTAINER_ID=$(docker create --platform linux/amd64 rust-stable:ubuntu-20.04)
docker cp $CONTAINER_ID:/root ./dev-env/
docker rm $CONTAINER_ID

echo "Extraction completed."