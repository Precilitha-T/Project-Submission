# Project Submission - DevOps Tasks

## Overview
This repository contains the implementation of multiple DevOps tasks including server configuration, Docker deployment, monitoring, security, and firewall setup.

---

## Project Structure

Project-Submission/
├── Task-1/
├── Task-2/
├── Task-3/
├── Task-4/
└── Task-5/

---

## Task Details

### Task-1: SSH Configuration
- Configured secure SSH access
- Used key-based authentication
- Files included:
  - sshd_config.txt
  - public_key.txt

---

### Task-2: Docker Deployment
- Installed Docker on EC2 instance
- Created Dockerfile
- Deployed application container
- Exposed application using port mapping

---

### Task-3: Container Monitoring
- Created monitoring script using Bash
- Collected CPU and memory usage
- Stored logs in `/opt/container-monitor/logs`
- Automated using cron job

---

### Task-4: User and Permission Configuration
- Created dedicated user `monitoruser`
- Assigned ownership of monitoring directory
- Applied restricted permissions (700)
- Ensured secure access control

---

### Task-5: Firewall Configuration
- Installed and configured UFW
- Allowed required ports (SSH, HTTP, App)
- Restricted SSH access to specific IP
- Enabled firewall and verified rules

---

## Technologies Used
- AWS EC2
- Linux (Ubuntu)
- Docker
- Bash Scripting
- Cron Jobs
- UFW Firewall

---

## Conclusion
Successfully implemented DevOps practices including deployment, monitoring, automation, and security configurations.
