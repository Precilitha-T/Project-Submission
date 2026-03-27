# Task 4 - Secure Monitoring Logs

## Objective

Restrict access to monitoring logs by creating a dedicated user and applying proper permissions.

---

## Steps Performed

### 1. Created Dedicated User

```bash id="6npp04"
sudo adduser monitoruser
```

---

### 2. Created Monitoring Directory

```bash id="k55c4o"
sudo mkdir -p /opt/container-monitor
```

---

### 3. Assigned Ownership

```bash id="3aq31m"
sudo chown -R monitoruser:monitoruser /opt/container-monitor
```

---

### 4. Set Permissions

```bash id="r6ijut"
sudo chmod -R 700 /opt/container-monitor
```

---

### 5. Verified Access

Switch to user:

```bash id="z3a3k0"
su - monitoruser
```

Access directory:

```bash id="0hbrt1"
cd /opt/container-monitor
ls
```

---

## Output

* Only `monitoruser` has access to monitoring directory
* Other users are restricted

---

## Result

Successfully secured monitoring logs using user-based access control.
