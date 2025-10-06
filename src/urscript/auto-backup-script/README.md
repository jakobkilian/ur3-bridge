# UR3 Auto-Backup Script

An automated backup system that periodically synchronizes URScript files from a Universal Robots UR3 controller to a Git repository.

## Overview

This system automatically backs up URScript files from the UR3 controller's `/programs/mqtt-ur3-bridge` directory to a local Git repository. The backup process is triggered by:

- System bootup (via systemd service)
- Hourly schedule (configurable)
- MQTT message on the `urpi` topic with payload `backup`

## What it Does

- **Automated SCP file transfer** from UR3 controller
- **Git integration** with automatic commits and push to `auto-backup` branch
- **MQTT integration** for remote backup triggering
- **Error handling** and logging
- **Systemd service** for automatic startup
- **Configurable scheduling** (default: hourly)

## Scripts

### `pullFilesFromUr3.sh`
Shell script that performs the actual file transfer from the UR3 controller using SCP.
- **Source**: `root@10.3.3.14:/programs/mqtt-ur3-bridge`
- **Destination**: `urscript/backup` in the repository root
- **Features**: Error checking, directory creation, logging

### `pushRoutine.py`
Main Python script that does the backup process:
- Executes the SCP backup script
- Manages Git operations (checkout, pull, add, commit, push)
- Handles MQTT communication
- Implements scheduled backups
- **Features**: Comprehensive error handling, status reporting

### `start.sh`
Entry point script for the systemd service:
- Activates Python virtual environment
- Starts the main Python routine
- **Features**: Environment validation, logging setup

## Setup Instructions

### Prerequisites

1. **Python Dependencies**:
   ```bash
   pip install paho-mqtt schedule
   ```

2. **SSH Key Setup**:
   - Configure SSH key-based authentication to the UR3 controller
   - Ensure the `root@10.3.3.14` connection works without password

3. **Git Repository**:
   - Ensure you're in a Git repository
   - Create an `auto-backup` branch:
     ```bash
     git checkout -b auto-backup
     git push origin auto-backup
     ```

4. **MQTT Broker**:
   - MQTT broker running on `localhost:1883`
   - Credentials: `urpi:urpi`

### Installation

1. **Clone/Place Scripts**:
   Place this directory in your desired location (e.g., `/home/pi/ur3-backup-script`)

2. **Make Scripts Executable**:
   ```bash
   chmod +x pullFilesFromUr3.sh start.sh
   ```

3. **Test the Scripts**:
   ```bash
   # Test SCP backup
   ./pullFilesFromUr3.sh
   
   # Test full routine
   ./start.sh
   ```

### Systemd Service Setup

Create the service file at `/etc/systemd/system/ur3BackupRoutine.service`:

```ini
[Unit]
Description=UR3 Auto-Backup Service - Backup URScript files from UR3 controller
After=network.target

[Service]
Type=simple
ExecStart=/home/pi/ur3-backup-script/start.sh
WorkingDirectory=/home/pi/ur3-backup-script
StandardOutput=file:/home/pi/ur3-backup-script/logs/backup.log
StandardError=file:/home/pi/ur3-backup-script/logs/backup.err
Restart=always
RestartSec=10
User=pi
Group=pi

[Install]
WantedBy=multi-user.target
```

Enable and start the service:
```bash
sudo systemctl daemon-reload
sudo systemctl enable ur3BackupRoutine.service
sudo systemctl start ur3BackupRoutine.service
```

## Configuration

### Network Settings
Edit the variables in `pullFilesFromUr3.sh`:
- `USER`: Username for UR3 controller (default: `root`)
- `HOST`: IP address of UR3 controller (default: `10.3.3.14`)
- `SRC_DIR`: Source directory on UR3 (default: `/programs/mqtt-ur3-bridge`)

### Backup Schedule
Modify the schedule in `pushRoutine.py`:
```python
# Current: every hour
schedule.every(1).hours.do(backup_and_commit)

# Examples:
# schedule.every(30).minutes.do(backup_and_commit)  # Every 30 minutes
# schedule.every().day.at("02:00").do(backup_and_commit)  # Daily at 2 AM
```

### MQTT Settings
Update MQTT configuration in `pushRoutine.py`:
```python
client.username_pw_set("urpi", "urpi")  # Username and password
client.connect("localhost", 1883, 60)   # Host, port, keepalive
```

## Usage

### Manual Backup
```bash
# Direct script execution
./start.sh

# Via MQTT (if service is running)
mosquitto_pub -h localhost -t "urpi" -m "backup" -u urpi -P urpi
```

### Monitoring
```bash
# Check service status
sudo systemctl status ur3BackupRoutine.service

# View logs
sudo journalctl -u ur3BackupRoutine.service -f

# Check log files
tail -f logs/backup.log
tail -f logs/backup.err
```

## Directory Structure

```
ur3-backup-script/
├── README.md              # This documentation
├── pullFilesFromUr3.sh    # SCP backup script
├── pushRoutine.py         # Main Python routine
├── start.sh               # Service entry point
└── logs/                  # Log directory (created automatically)
    ├── backup.log         # Standard output
    └── backup.err         # Error output
```

## Troubleshooting

### Common Issues

1. **SSH Connection Failed**:
   - Verify UR3 controller IP address and connectivity
   - Check SSH key authentication setup
   - Test manual SCP: `scp root@10.3.3.14:/programs/mqtt-ur3-bridge/test.txt ./`

2. **Git Operations Failed**:
   - Ensure you're in a Git repository
   - Check if `auto-backup` branch exists
   - Verify Git credentials and remote access

3. **MQTT Connection Issues**:
   - Verify MQTT broker is running: `sudo systemctl status mosquitto`
   - Test MQTT connectivity: `mosquitto_sub -h localhost -t "urpi/return" -u urpi -P urpi`

4. **Permission Issues**:
   - Ensure scripts are executable: `chmod +x *.sh`
   - Check file ownership: `chown -R pi:pi /home/pi/ur3-backup-script`

### Log Analysis
```bash
# Service logs
sudo journalctl -u ur3BackupRoutine.service --since "1 hour ago"

# Application logs
grep -i error logs/backup.log
grep -i "backup.*completed" logs/backup.log
```

## Security Considerations

- SSH keys should be properly secured (600 permissions)
- MQTT credentials should be changed from defaults
- Consider network segmentation for the UR3 controller
- Regular backup of the Git repository to external storage

## License

This project is part of the ur3-bridge system. Please refer to the main project license.

