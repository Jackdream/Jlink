# Wiki Search Script
# 用于快速搜索知识库内容

param(
    [Parameter(Mandatory=$true)]
    [string]$Query,

    [string]$Path = "wiki"
)

# 简单搜索：文件名 + 内容
$results = @()

# 搜索文件名
$nameMatches = Get-ChildItem -Path $Path -Recurse -Filter "*.md" | Where-Object {
    $_.Name -like "*$Query*"
}

foreach ($file in $nameMatches) {
    $results += [PSCustomObject]@{
        File = $file.FullName
        Type = "filename"
        Line = $null
        Content = $file.Name
    }
}

# 搜索内容
$contentMatches = Select-String -Path "$Path/**/*.md" -Pattern $Query -Context 1,1

foreach ($match in $contentMatches) {
    $results += [PSCustomObject]@{
        File = $match.Path
        Type = "content"
        Line = $match.LineNumber
        Content = $match.Line.Trim()
    }
}

# 输出结果
if ($results.Count -eq 0) {
    Write-Host "No results found for: $Query" -ForegroundColor Yellow
} else {
    Write-Host "Found $($results.Count) results for: $Query" -ForegroundColor Green
    Write-Host ""
    $results | ForEach-Object {
        Write-Host "[$($_.Type)] $($_.File)" -ForegroundColor Cyan
        if ($_.Line) {
            Write-Host "  Line $($_.Line): $($_.Content)" -ForegroundColor White
        } else {
            Write-Host "  $($_.Content)" -ForegroundColor White
        }
        Write-Host ""
    }
}
