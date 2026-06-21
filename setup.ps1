$ErrorActionPreference = "Stop"

# Check if uv is installed
if (-not (Get-Command "uv" -ErrorAction SilentlyContinue)) {
    Write-Host "uv is not installed. Installing uv..."
    powershell -ExecutionPolicy ByPass -c "irm https://astral.sh/uv/install.ps1 | iex"
    
    # Add uv path to current process environment so it's immediately available
    $env:PATH = "$env:USERPROFILE\.local\bin;$env:PATH"
}

Write-Host "Syncing project dependencies..."
& uv sync

Write-Host "Setup completed successfully! You can run commands using 'uv run <command>'."
