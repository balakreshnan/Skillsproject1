$ErrorActionPreference = 'Stop'

$repoRoot = Split-Path -Parent $PSScriptRoot
$skillsDir = Join-Path $repoRoot 'skills'

$skillFiles = Get-ChildItem -Path $skillsDir -Recurse -Filter 'SKILL.md' | Where-Object {
    $_.FullName -notmatch '\\_catalog\\'
}

$hasError = $false

foreach ($file in $skillFiles) {
    $content = Get-Content -Path $file.FullName
    $lineNumber = 0

    foreach ($line in $content) {
        $lineNumber++

        if ($line.Length -gt 140) {
            Write-Host "[WARN] Long line (>140) in $($file.FullName):$lineNumber"
        }

        if ($line -match '\t') {
            Write-Host "[FAIL] Tab character found in $($file.FullName):$lineNumber"
            $hasError = $true
        }
    }
}

if ($hasError) {
    Write-Error 'Skill lint failed.'
}

Write-Host 'Skill lint passed.'
