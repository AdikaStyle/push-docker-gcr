#!/bin/sh -l

IMAGE_NAME="$INPUT_GCR_HOST/$INPUT_GCR_PROJECT_ID/$INPUT_IMAGE_NAME:$INPUT_IMAGE_TAG"
echo $IMAGE_NAME
echo banana
echo $INPUT_GCR_PROJECT_ID
echo duck
echo $GCLOUD_SERVICE_KEY | docker login -u _json_key --password-stdin https://$INPUT_GCR_HOST/
docker build -t $IMAGE_NAME .
docker images
docker push $IMAGE_NAME
