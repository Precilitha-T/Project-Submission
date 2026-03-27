# Task 1: Server Setup and SSH Configuration

## Objective

To configure secure remote access to a Linux server using SSH and implement passwordless authentication.

---

## Steps Performed

### 1. Provisioned EC2 Instance

* Created an Ubuntu EC2 instance on AWS
* Downloaded the key pair (`.pem` file)

---

### 2. Connected to Server via SSH

```bash
ssh -i key-06.pem ubuntu@<EC2-PUBLIC-IP>
```

---

### 3. Generated SSH Key Pair (Local System)

```bash
ssh-keygen
```

* Generated:

  * Private key → `~/.ssh/id_rsa`
  * Public key → `~/.ssh/id_rsa.pub`

---

### 4. Copied Public Key to Server

```bash
ssh-copy-id -i ~/.ssh/id_rsa.pub ubuntu@<EC2-PUBLIC-IP>
```

* This adds the public key to:

```
~/.ssh/authorized_keys
```

---

### 5. Verified Passwordless Login

```bash
ssh ubuntu@<EC2-PUBLIC-IP>
```

* Successfully logged in without password

---

### 6. Disabled Password Authentication (Security Hardening)

```bash
sudo nano /etc/ssh/sshd_config
```

Changed:

```
PasswordAuthentication no
```

Restarted SSH:

```bash
sudo systemctl restart ssh
```

---

## Outcome

* Secure SSH access configured
* Passwordless authentication enabled
* Password-based login disabled for enhanced security

---

## Key Concepts

* SSH Key-Based Authentication
* Public & Private Key Cryptography
* Secure Remote Access
* Linux Server Configuration

