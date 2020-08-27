#!/bin/sh -l

IMAGE_NAME="$INPUT_GCR_HOST/$INPUT_GCR_PROJECT_ID/$INPUT_IMAGE_NAME:$INPUT_IMAGE_TAG"
LATEST_IMAGE="$INPUT_GCR_HOST/$INPUT_GCR_PROJECT_ID/$INPUT_IMAGE_NAME:latest"

echo -n $GCLOUD_SERVICE_KEY | docker login -u _json_key --password-stdin https://$INPUT_GCR_HOST/
docker build -t $IMAGE_NAME -t $LATEST_IMAGE .
docker push $IMAGE_NAME
docker push $LATEST_IMAGE
