$ErrorActionPreference = 'Stop'

$repoRoot = Split-Path -Parent $PSScriptRoot
$skillsDir = Join-Path $repoRoot 'skills'
$outPath = Join-Path $skillsDir '_catalog/index.yaml'

$skillFiles = Get-ChildItem -Path $skillsDir -Recurse -Filter 'SKILL.md' | Where-Object {
    $_.FullName -notmatch '\\_catalog\\'
}

$lines = @()
$lines += 'version: 1'
$lines += 'skills:'

foreach ($file in $skillFiles) {
    $relativePath = $file.FullName.Substring($repoRoot.Length + 1).Replace('\', '/')
    $skillId = Split-Path -Path $file.DirectoryName -Leaf

    $lines += "  - id: $skillId"
    $lines += "    path: $relativePath"
    $lines += '    owner: unknown'
    $lines += '    tags: []'
    $lines += '    status: active'
}

Set-Content -Path $outPath -Value $lines -Encoding UTF8
Write-Host "Catalog rebuilt at $outPath"
