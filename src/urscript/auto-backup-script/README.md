# UR3 Backup Script

This used to be an automated script pulling changes from the UR3 to the URPi and then pushing this into a specific Github repository. The Maintenance was too much work, so I reduced it to:

**A shell script to pull the latest state of all programs files on the UR3 and save it on the URPi .** One can then e.g. manually push the changes to a mirrored ur3-bridge repo or somewhere else.

### Necessary Steps for Automation

You'd simply need to set up a password-free ssh login from URPi to UR3 (by using ssh keys), create a little script that takes care of Git and then create a system service that triggers the procedure periodically (e.g. every hour) or at boot-up or at certain MQTT messages...

## Backup Shell Script

### `pullFilesFromUr3.sh`

Shell script that performs the actual file transfer from the UR3 controller using SCP.
- **Source**: `root@10.3.3.14:/programs/mqtt-ur3-bridge`

- **Destination**: `urscript/backup` in the repository root

- **this needs the UR3 admin password to be entered manually in the shell!** The default is "easybot" but you can change it on the teach pendant (settings → password → admin)

### Usage

Execute script:

  ```bash
  # Direct script execution
  ./pullFilesFromUr3.sh
  ```

And then manually copy or push to GitHub.

## Configuration

URPi and UR3 have to be in the same 10.3.3.XX ethernet network, managed by the URPi. 

Maybe you have to edit the variables in `pullFilesFromUr3.sh`:
- `USER`: Username for UR3 controller (default: `root`)
- `HOST`: IP address of UR3 controller (default: `10.3.3.14`)
- `SRC_DIR`: Source directory on UR3 (default: `/programs/mqtt-ur3-bridge`)

