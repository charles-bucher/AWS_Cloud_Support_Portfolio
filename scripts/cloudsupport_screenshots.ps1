# Rename CloudSupport Screenshots Script
# Improves screenshot names for better clarity and professionalism

$DIR = "C:\Users\buche\repos\Cloud_Work\REPOS\AWS_Cloud_Support_Sim\screenshots"

Write-Host "`nRenaming CloudSupport screenshots..." -ForegroundColor Cyan
Write-Host "Directory: $DIR`n" -ForegroundColor Yellow

# Verify directory exists
if (!(Test-Path -Path $DIR)) {
    Write-Host "ERROR: Directory not found: $DIR" -ForegroundColor Red
    exit 1
}

# Rename files
try {
    Rename-Item "$DIR\CloudSupport_01_connectivity_ping.png" -NewName "CloudSupport_01_NetworkConnectivity.png" -ErrorAction Stop
    Write-Host "✓ Renamed: CloudSupport_01_connectivity_ping.png → CloudSupport_01_NetworkConnectivity.png" -ForegroundColor Green
} catch {
    Write-Host "✗ Failed: CloudSupport_01_connectivity_ping.png (may already be renamed)" -ForegroundColor Yellow
}

try {
    Rename-Item "$DIR\CloudSupport_03_05_ec2_security_group_verify.png" -NewName "CloudSupport_02_SecurityGroupConfig.png" -ErrorAction Stop
    Write-Host "✓ Renamed: CloudSupport_03_05_ec2_security_group_verify.png → CloudSupport_02_SecurityGroupConfig.png" -ForegroundColor Green
} catch {
    Write-Host "✗ Failed: CloudSupport_03_05_ec2_security_group_verify.png (may already be renamed)" -ForegroundColor Yellow
}

try {
    Rename-Item "$DIR\CloudSupport_04_06_ec2_stack_created.png" -NewName "CloudSupport_03_EC2StackDeployment.png" -ErrorAction Stop
    Write-Host "✓ Renamed: CloudSupport_04_06_ec2_stack_created.png → CloudSupport_03_EC2StackDeployment.png" -ForegroundColor Green
} catch {
    Write-Host "✗ Failed: CloudSupport_04_06_ec2_stack_created.png (may already be renamed)" -ForegroundColor Yellow
}

try {
    Rename-Item "$DIR\CloudSupport_05_07_python_git_commit.png" -NewName "CloudSupport_04_GitVersionControl.png" -ErrorAction Stop
    Write-Host "✓ Renamed: CloudSupport_05_07_python_git_commit.png → CloudSupport_04_GitVersionControl.png" -ForegroundColor Green
} catch {
    Write-Host "✗ Failed: CloudSupport_05_07_python_git_commit.png (may already be renamed)" -ForegroundColor Yellow
}

try {
    Rename-Item "$DIR\CloudSupport_06_09_python_run_main.png" -NewName "CloudSupport_05_PythonExecution.png" -ErrorAction Stop
    Write-Host "✓ Renamed: CloudSupport_06_09_python_run_main.png → CloudSupport_05_PythonExecution.png" -ForegroundColor Green
} catch {
    Write-Host "✗ Failed: CloudSupport_06_09_python_run_main.png (may already be renamed)" -ForegroundColor Yellow
}

Write-Host "`n✓ Screenshot renaming complete!" -ForegroundColor Green
Write-Host "`nBenefits:" -ForegroundColor White
Write-Host "  - Sequential numbering (01-05)" -ForegroundColor Gray
Write-Host "  - Removed confusing double numbers" -ForegroundColor Gray
Write-Host "  - Professional capitalized names" -ForegroundColor Gray
Write-Host "  - Highlights skills demonstrated" -ForegroundColor Gray