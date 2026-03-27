# Task 2 - Docker Installation and Application Deployment

## Objective

Install Docker and deploy a containerized web application using a custom HTML page.

---

## Steps Performed

### 1. Installed Docker

```bash
sudo apt update
sudo apt install docker.io -y
```

---

### 2. Started Docker Service

```bash
sudo systemctl start docker
sudo systemctl enable docker
```

---

### 3. Verified Docker Installation

```bash
docker --version
```

---

### 4. Created Application Files

Created `index.html` and `Dockerfile`

Dockerfile:

```dockerfile
FROM nginx:latest
COPY index.html /usr/share/nginx/html/index.html
```

---

### 5. Built Docker Image

```bash
docker build -t my-web-app .
```

---

### 6. Ran Docker Container

```bash
docker run -d -p 8000:80 --name web-container my-web-app
```

---

### 7. Verified Running Container

```bash
docker ps
```

---

## Output

Application accessible at:
http://<EC2-PUBLIC-IP>:8000

---

## Result

Successfully installed Docker and deployed a containerized web application accessible via browser.

