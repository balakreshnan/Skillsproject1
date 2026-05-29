$ErrorActionPreference = 'Stop'

$repoRoot = Split-Path -Parent $PSScriptRoot
$skillsDir = Join-Path $repoRoot 'skills'
$catalogPath = Join-Path $skillsDir '_catalog/index.yaml'

if (-not (Test-Path $catalogPath)) {
    Write-Error "Missing catalog file: $catalogPath"
}

$skillFiles = Get-ChildItem -Path $skillsDir -Recurse -Filter 'SKILL.md' | Where-Object {
    $_.FullName -notmatch '\\_catalog\\'
}

if ($skillFiles.Count -eq 0) {
    Write-Error 'No SKILL.md files found under skills/.'
}

$requiredSections = @(
    '# Description',
    '# When To Use',
    '# When Not To Use',
    '# Inputs',
    '# Outputs',
    '# Examples',
    '# Limitations'
)

$hasError = $false

foreach ($file in $skillFiles) {
    $content = Get-Content -Path $file.FullName -Raw

    if ($content -notmatch '(?s)^---\s*.*?\s*---') {
        Write-Host "[FAIL] Missing frontmatter in $($file.FullName)"
        $hasError = $true
        continue
    }

    foreach ($section in $requiredSections) {
        if ($content -notmatch [regex]::Escape($section)) {
            Write-Host "[FAIL] Missing section '$section' in $($file.FullName)"
            $hasError = $true
        }
    }
}

if ($hasError) {
    Write-Error 'Skill validation failed.'
}

Write-Host 'Skill validation passed.'
