# Log Parser
# 解析日志文件，提取最近的操作记录

param(
    [int]$Count = 5,
    [string]$LogPath = "wiki/log.md"
)

if (-not (Test-Path $LogPath)) {
    Write-Host "Log file not found: $LogPath" -ForegroundColor Red
    exit 1
}

$content = Get-Content $LogPath -Raw

# 提取所有条目（以 ## [ 开头的行）
$entries = [regex]::Matches($content, '(?m)^## \[.+')

if ($entries.Count -eq 0) {
    Write-Host "No log entries found" -ForegroundColor Yellow
    exit 0
}

# 显示最近的条目
$recentEntries = $entries | Select-Object -Last $Count

Write-Host "Last $Count log entries:" -ForegroundColor Green
Write-Host ""

foreach ($entry in $recentEntries) {
    Write-Host $entry.Value -ForegroundColor Cyan
}
