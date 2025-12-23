"""
Brief: AWS Cloud Support Simulation Script
Purpose: Hands-on troubleshooting and RCA practice
"""
import os
import shutil
from git import Repo

# CONFIGURATION
LOCAL_SCREENSHOT_DIR = r"C:\path\to\screenshots"   # folder with screenshots
REPO_DIR = r"C:\path\to\local\repo"               # local clone of your GitHub repo
REMOTE_NAME = "origin"
BRANCH_NAME = "main"

def sync_screenshots():
    # Open repo
    repo = Repo(REPO_DIR)
    assert not repo.bare

    # Path inside repo where screenshots are stored
    repo_screenshot_dir = os.path.join(REPO_DIR, "screenshots")

    # Ensure folder exists
    os.makedirs(repo_screenshot_dir, exist_ok=True)

    # Delete existing screenshots in repo
    for file in os.listdir(repo_screenshot_dir):
        file_path = os.path.join(repo_screenshot_dir, file)
        if os.path.isfile(file_path):
            os.remove(file_path)

    # Copy new screenshots from local folder
    for file in os.listdir(LOCAL_SCREENSHOT_DIR):
        src = os.path.join(LOCAL_SCREENSHOT_DIR, file)
        dst = os.path.join(repo_screenshot_dir, file)
        if os.path.isfile(src):
            shutil.copy2(src, dst)

    # Stage changes
    repo.git.add(A=True)

    # Commit changes
    repo.index.commit("Update screenshots")

    # Push to GitHub
    origin = repo.remote(name=REMOTE_NAME)
    origin.push(BRANCH_NAME)

    print("Screenshots synced and pushed to GitHub.")

if __name__ == "__main__":
    sync_screenshots()
