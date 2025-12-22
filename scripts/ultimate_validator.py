"""
Brief: AWS Cloud Support Simulation Script
Purpose: Hands-on troubleshooting and RCA practice
"""
import os
import ast

# -----------------------------
# CONFIG
# -----------------------------
REPO_BASE = os.path.dirname(os.path.abspath(__file__))

REQUIRED_FILES = [
    "README.md",
    "requirements.txt",
    "LICENSE",
    ".gitignore",
    "CODE_OF_CONDUCT.md",
    "CONTRIBUTING.md",
    "SECURITY.md",
    "main.tf"
]

REQUIRED_DIRS = [
    "scenarios",
    "scripts",
    "screenshots",
    "diagrams",
    "docs",
    "tests",
    "src"
]

PYTHON_EXTENSIONS = [".py"]

# -----------------------------
# UTILITIES
# -----------------------------
def has_docstring(file_path):
    try:
        with open(file_path, "r", encoding="utf-8") as f:
            tree = ast.parse(f.read())
        return bool(ast.get_docstring(tree))
    except Exception:
        return False

# -----------------------------
# VALIDATION
# -----------------------------
passed, failed, warnings = 0, 0, 0

print("="*80)
print("AWS CLOUD SUPPORT SIMULATION - ULTIMATE VALIDATION REPORT")
print("="*80)
print(f"\nGenerated: 2025-12-22 10:28:37\n")

# -----------------------------
# Check required files
# -----------------------------
print("━━ REPOSITORY STRUCTURE ━━")
for f in REQUIRED_FILES:
    path = os.path.join(REPO_BASE, f)
    if os.path.isfile(path):
        print(f"✓ File exists: {f}")
        passed += 1
    else:
        print(f"✗ File missing: {f}")
        failed += 1

# -----------------------------
# Check required directories
# -----------------------------
for d in REQUIRED_DIRS:
    path = os.path.join(REPO_BASE, d)
    if os.path.isdir(path):
        print(f"✓ Directory exists: {d}")
        passed += 1
    else:
        print(f"✗ Directory missing: {d}")
        failed += 1

# -----------------------------
# Python docstring check
# -----------------------------
python_files = []
for root, dirs, files in os.walk(REPO_BASE):
    for file in files:
        if file.endswith(".py"):
            python_files.append(os.path.join(root, file))

docstring_count = sum(has_docstring(f) for f in python_files)
if python_files:
    docstring_percentage = docstring_count / len(python_files) * 100
else:
    docstring_percentage = 0

if docstring_percentage >= 50:
    print(f"✓ Docstring coverage: {docstring_percentage:.1f}%")
    passed += 1
else:
    print(f"✗ Docstring coverage: {docstring_percentage:.1f}% (aim >=50%)")
    failed += 1

# -----------------------------
# Terraform check
# -----------------------------
terraform_files = [f for f in os.listdir(REPO_BASE) if f.endswith(".tf")]
if terraform_files:
    print(f"✓ Terraform files detected: {', '.join(terraform_files)}")
    passed += 1
else:
    print("⚠ No Terraform files found")
    warnings += 1

# -----------------------------
# Git check
# -----------------------------
if os.path.isdir(os.path.join(REPO_BASE, ".git")):
    print("✓ Git repository detected")
    passed += 1
else:
    print("✗ Not a Git repository")
    failed += 1

# -----------------------------
# AWS credentials check
# -----------------------------
aws_credentials = os.path.expanduser("~/.aws/credentials")
if os.path.isfile(aws_credentials):
    print("✓ AWS credentials detected (aws configure)")
    passed += 1
else:
    print("⚠ AWS credentials not configured locally")
    warnings += 1

# -----------------------------
# Summary
# -----------------------------
total_checks = passed + failed + warnings
print("\n" + "="*80)
print("OVERALL SUMMARY:")
print(f"  Total Checks:  {total_checks}")
print(f"  ✓ Passed:      {passed} ({passed/total_checks*100:.1f}%)")
print(f"  ✗ Failed:      {failed} ({failed/total_checks*100:.1f}%)")
print(f"  ⚠ Warnings:    {warnings} ({warnings/total_checks*100:.1f}%)")

if failed > 0:
    print("\n✗ VALIDATION FAILED - Critical issues need attention")
else:
    print("\n✓ VALIDATION PASSED - Repo is structurally sound")

print("="*80)
