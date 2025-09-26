# Cow wisdom web server

## Prerequisites

```
sudo apt install fortune-mod cowsay -y
```

## How to use?

1. Run `./wisecow.sh`
2. Point the browser to server port (default 4499)

## What to expect?
![wisecow](https://github.com/nyrahul/wisecow/assets/9133227/8d6bfde3-4a5a-480e-8d55-3fef60300d98)

# Problem Statement
Deploy the wisecow application as a k8s app

## Requirement
1. Create Dockerfile for the image and corresponding k8s manifest to deploy in k8s env. The wisecow service should be exposed as k8s service.
2. Github action for creating new image when changes are made to this repo
3. [Challenge goal]: Enable secure TLS communication for the wisecow app.

## Expected Artifacts
1. Github repo containing the app with corresponding dockerfile, k8s manifest, any other artifacts needed.
2. Github repo with corresponding github action.

---

## My Assessment Submissions

### Problem Statement 1: Containerisation and Deployment of Wisecow App
- **Dockerfile:** `Dockerfile`  
  Contains the instructions to build the Wisecow application container image.
- **Kubernetes manifests:**  
  - Deployment: `k8s/deployment.yaml`  
  - Service: `k8s/service.yaml`  
  These files deploy the application and expose it in a Kubernetes cluster.
- **CI/CD workflow:** `.github/workflows/ci-cd.yml`  
  Automates building the Docker image and pushing it to Docker Hub.  
  *(Challenge goals like automated deployment and TLS are optional.)*

### Problem Statement 2: Scripts
All scripts are located in the folder: `ps2-scripts/`

1. **System Health Monitoring Script:** `ps2-scripts/health_monitor.sh`  
   - Monitors CPU, memory, disk usage, and running processes.  
   - Logs warnings if thresholds are exceeded.

2. **Application Health Checker:** `ps2-scripts/app_health_check.sh`  
   - Checks if the Wisecow application is running and reachable.  
   - Uses HTTP status codes to determine if the app is up or down.  

*Instructions:*  
- Run the scripts using bash:  
  ```bash
  bash ps2-scripts/health_monitor.sh
  bash ps2-scripts/app_health_check.sh

3. Github repo should be kept private and the access should be enabled for following github IDs: nyrahul
updated again
