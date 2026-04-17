# Wiki Stats
# 统计知识库的基本信息

$wikiPath = "wiki"
$rawPath = "raw"

Write-Host "=== 知识库统计 ===" -ForegroundColor Cyan
Write-Host ""

# Wiki 页面统计
$entities = (Get-ChildItem "$wikiPath/entities" -Filter "*.md" -ErrorAction SilentlyContinue).Count
$concepts = (Get-ChildItem "$wikiPath/concepts" -Filter "*.md" -ErrorAction SilentlyContinue).Count
$summaries = (Get-ChildItem "$wikiPath/summaries" -Filter "*.md" -ErrorAction SilentlyContinue).Count
$analyses = (Get-ChildItem "$wikiPath/analyses" -Filter "*.md" -ErrorAction SilentlyContinue).Count
$synthesis = (Get-ChildItem "$wikiPath/synthesis" -Filter "*.md" -ErrorAction SilentlyContinue).Count

Write-Host "Wiki 页面:" -ForegroundColor Yellow
Write-Host "  实体页面: $entities"
Write-Host "  概念页面: $concepts"
Write-Host "  来源摘要: $summaries"
Write-Host "  分析页面: $analyses"
Write-Host "  综合页面: $synthesis"
Write-Host "  总计: $($entities + $concepts + $summaries + $analyses + $synthesis)"
Write-Host ""

# 原始来源统计
$articles = (Get-ChildItem "$rawPath/articles" -Filter "*.md" -ErrorAction SilentlyContinue).Count
$books = (Get-ChildItem "$rawPath/books" -Filter "*.md" -ErrorAction SilentlyContinue).Count
$notes = (Get-ChildItem "$rawPath/notes" -Filter "*.md" -ErrorAction SilentlyContinue).Count

Write-Host "原始来源:" -ForegroundColor Yellow
Write-Host "  文章: $articles"
Write-Host "  书籍: $books"
Write-Host "  笔记: $notes"
Write-Host ""

# 总链接数（简单的 wikilink 统计）
$allMdFiles = Get-ChildItem -Path $wikiPath -Recurse -Filter "*.md" | Select-Object -ExpandProperty FullName
$totalLinks = 0
foreach ($file in $allMdFiles) {
    $content = Get-Content $file -Raw
    $links = [regex]::Matches($content, '\[\[.+?\]\]')
    $totalLinks += $links.Count
}

Write-Host "交叉链接: $totalLinks"
