# Build and push docker image to Google Container Registry action

Opinionated github workflow action to build a docker image from Dockerfile
and push the image to Google Continer Registry.

Pass all sensitive data using secrets.

## Inputs

### `gcr_host`

Google Container Registry Host

- gcrp.io (default)
- eu.gcr.ui
- etc

### `image_name`

Name of the image. Should be specified without domain and project.

### `image_tag`

Image tag to set for the built image.

## Required Environment Variables

### `GCLOUD_SERVICE_KEY`

Service key to use for GCR authentication

## Example usage

```ylm
uses: adikastyle/push-docker-gcr@master
env:
  GCLOUD_SERVICE_KEY: ${{ secrets.GCLOUD_SERVICE_KEY }}
with:
  gcr_host: eu.gcr.io
  image_name: data-service-template
  image_tag: latest
  gcr_project_id: adikastyle-dev

```
