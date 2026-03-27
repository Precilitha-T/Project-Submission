# Task 5 - Firewall Configuration

## Objective

Configure firewall rules to allow required traffic and restrict unauthorized access.

---

## Steps Performed

### 1. Installed UFW

```bash
sudo apt update
sudo apt install ufw -y
```

---

### 2. Allowed Required Ports

Allow SSH:

```bash
sudo ufw allow ssh
```

Allow HTTP:

```bash
sudo ufw allow 80
```

Allow application port:

```bash
sudo ufw allow 8000
```

---

### 3. Restricted SSH Access (Optional)

Allowed SSH only from specific IP:

```bash
sudo ufw allow from <YOUR-IP> to any port 22
```

Removed open SSH access:

```bash
sudo ufw delete allow ssh
```

---

### 4. Enabled Firewall

```bash
sudo ufw enable
```

---

### 5. Verified Firewall Status

```bash
sudo ufw status
```

---

## Output

Firewall allows:

* SSH (restricted to specific IP)
* HTTP (port 80)
* Application (port 8000)

---

## Result

Successfully configured firewall rules to secure the server while allowing required services.
