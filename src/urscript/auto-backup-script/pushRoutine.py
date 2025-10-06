import os
import subprocess
import paho.mqtt.client as mqtt
import schedule
import time
import datetime

# Get the directory of the current script
script_dir = os.path.dirname(os.path.realpath(__file__))

def backup_and_commit():
    try:
        print(f"Starting backup routine at {datetime.datetime.now()}")
        
        # Run the backup script
        result = subprocess.run(["/bin/bash", os.path.join(script_dir, "pullFilesFromUr3.sh")], 
                              capture_output=True, text=True)
        
        if result.returncode != 0:
            print(f"Error running backup script: {result.stderr}")
            return False

        # Path to your repository (go up two levels from auto-backup-script to reach the repo root)
        repo_path = os.path.abspath(os.path.join(script_dir, "../.."))
        
        if not os.path.exists(os.path.join(repo_path, ".git")):
            print(f"Error: {repo_path} is not a git repository")
            return False

        # Checkout the "auto-backup" branch
        result = subprocess.run(["git", "checkout", "auto-backup"], cwd=repo_path, 
                              capture_output=True, text=True)
        if result.returncode != 0:
            print(f"Error checking out auto-backup branch: {result.stderr}")
            return False

        # Pull the latest changes from "main" into "auto-backup"
        pull_result = subprocess.run(["git", "pull", "origin", "main"], cwd=repo_path,
                                   capture_output=True, text=True)

        # Check if the pull was successful
        if pull_result.returncode != 0:
            print("Error: Merge conflict occurred while pulling from main. Manual intervention required.")
            print(f"Git error: {pull_result.stderr}")
            return False

        # Add all changes to staging
        subprocess.run(["git", "add", "."], cwd=repo_path)

        # Check if there are any changes to commit
        status_result = subprocess.run(["git", "status", "--porcelain"], cwd=repo_path,
                                     capture_output=True, text=True)
        
        if not status_result.stdout.strip():
            print("No changes to commit")
            return True

        # Get the current date and time
        now = datetime.datetime.now()

        # Format the date and time as a string
        now_str = now.strftime("%Y-%m-%d %H:%M:%S")

        # Commit the changes with a message that includes the date and time
        commit_result = subprocess.run(["git", "commit", "-m", f"auto backup from UR3 at {now_str}"], 
                                     cwd=repo_path, capture_output=True, text=True)
        
        if commit_result.returncode != 0:
            print(f"Error committing changes: {commit_result.stderr}")
            return False

        # Push to the "auto-backup" branch
        push_result = subprocess.run(["git", "push", "origin", "auto-backup"], cwd=repo_path,
                                   capture_output=True, text=True)
        
        if push_result.returncode != 0:
            print(f"Error pushing changes: {push_result.stderr}")
            return False
            
        print("Backup and push completed successfully")
        return True
        
    except Exception as e:
        print(f"Unexpected error during backup: {e}")
        return False
def on_connect(client, userdata, flags, rc):
    client.subscribe("urpi")

def on_message(client, userdata, msg):
    if msg.payload.decode() == "backup":
        success = backup_and_commit()
        if success:
            client.publish("urpi/return", "Backup and push completed successfully")
        else:
            client.publish("urpi/return", "Backup failed - check logs")

client = mqtt.Client()
client.username_pw_set("urpi", "urpi")
client.on_connect = on_connect
client.on_message = on_message

# Run the backup routine when the script starts
backup_and_commit()

# Schedule the backup routine to run every hour
schedule.every(1).hours.do(backup_and_commit)

client.connect("localhost", 1883, 60)

while True:
    client.loop_start()
    schedule.run_pending()
    time.sleep(1)