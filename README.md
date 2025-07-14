# lolbas-docker-builder

This repository contains a GitHub Actions workflow that **clones the [LOLBAS](https://lolbas-project.github.io/) website once a week** and builds a Docker image based on its content. The built image is automatically pushed to DockerHub.

## Overview

- 🛠 **Automated with GitHub Actions**: The process is entirely handled by GitHub Actions workflows, requiring no manual intervention.
- 🕒 **Weekly update**: Every week, the workflow pulls the latest content from the [LOLBAS](https://lolbas-project.github.io/) repository.
- 🐳 **Docker image build & publish**: The new image is built from the cloned content and pushed to DockerHub.

## How It Works

1. **Scheduled Workflow**  
   The GitHub Actions workflow is triggered once a week (on Sunday at 2:00 AM UTC).

2. **Clone LOLBas**  
   The workflow clones the latest version of the [LOLBAS](https://github.com/LOLBAS-Project/LOLBAS) repository.

3. **Build Docker Image**  
   Using the `Dockerfile` in this repository, a new Docker image is built based on the freshly downloaded LOLBas content.

4. **Push to DockerHub**  
   The image is automatically pushed to the specified DockerHub repository.

## Usage

The resulting Docker image can be pulled from DockerHub:

```sh
docker pull mckevin33/lolbas:latest
```