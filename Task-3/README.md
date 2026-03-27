# Task 3 - Container Monitoring

## Objective

Monitor Docker container CPU and memory usage and store logs with timestamps automatically.

---

## Steps Performed

### 1. Created Monitoring Directory

```bash
sudo mkdir -p /opt/container-monitor/logs
```

---

### 2. Created Monitoring Script

```bash
nano /opt/container-monitor/monitor_script.sh

### 3. Made Script Executable

```bash
chmod +x /opt/container-monitor/monitor_script.sh
```

---

### 4. Set Permissions

```bash
sudo chown -R monitoruser:monitoruser /opt/container-monitor
```

---

### 5. Tested Script

```bash
/opt/container-monitor/monitor_script.sh
```

---

### 6. Verified Logs

```bash
cat /opt/container-monitor/logs/monitor_script.log
```

---

### 7. Automated using Cron

```bash
crontab -e
```

Added:

```bash
* * * * * /opt/container-monitor/monitor_script.sh
```

---

## Output

Logs stored at:

```
/opt/container-monitor/logs/monitor_script.log
```

Example:

```
2026-03-27 10:00:00 | CPU: 0.00% | MEM: 3.43MiB
```

---

## Result

Successfully implemented automated container monitoring using a shell script and cron job.

