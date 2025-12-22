"""
Brief: AWS Cloud Support Simulation Script
Purpose: Hands-on troubleshooting and RCA practice
"""
import os

REPO_BASE = r"C:\Users\buche\docs\Desktop\REPOS\AWS_Cloud_Support_Sim"

for root, dirs, files in os.walk(REPO_BASE):
    for file in files:
        if file.endswith(".py"):
            file_path = os.path.join(root, file)
            with open(file_path, "r+", encoding="utf-8") as f:
                content = f.read()
                # Skip if a docstring already exists
                if not content.strip().startswith('"""'):
                    f.seek(0, 0)
                    f.write('''"""
Brief: AWS Cloud Support Simulation Script
Purpose: Hands-on troubleshooting and RCA practice
"""''' + "\n" + content)
