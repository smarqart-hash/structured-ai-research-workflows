# Checks that every relative Markdown link and image in the repository points at a
# file that exists. External links (http, https, mailto) and pure anchors are skipped.
# This is the repository applying its own discipline to itself: no claimed link
# without a checked target.

$ErrorActionPreference = "Stop"
$root = Split-Path -Parent $PSScriptRoot
$failures = @()
$checked = 0

$linkPattern = '(?<!\!)\[[^\]]*\]\(([^)]+)\)|\!\[[^\]]*\]\(([^)]+)\)'

Get-ChildItem -Path $root -Recurse -Filter *.md -File | ForEach-Object {
  $file = $_
  $dir = $file.DirectoryName
  $lineNo = 0
  foreach ($line in Get-Content -LiteralPath $file.FullName) {
    $lineNo++
    foreach ($match in [regex]::Matches($line, $linkPattern)) {
      $target = if ($match.Groups[1].Success) { $match.Groups[1].Value } else { $match.Groups[2].Value }
      $target = $target.Trim()

      # Skip external links, anchors and mail links.
      if ($target -match '^(https?:|mailto:|#)') { continue }

      # Strip a trailing anchor (file.md#section) and any surrounding angle brackets.
      $path = ($target -split '#', 2)[0].Trim('<', '>', ' ')
      if ([string]::IsNullOrWhiteSpace($path)) { continue }

      $resolved = Join-Path $dir $path
      $checked++
      if (-not (Test-Path -LiteralPath $resolved)) {
        $rel = $file.FullName.Substring($root.Length + 1)
        $failures += "$rel`:$lineNo -> missing target: $path"
      }
    }
  }
}

if ($failures.Count -gt 0) {
  Write-Output "FAILURES ($($failures.Count)):"
  $failures | ForEach-Object { Write-Output "  $_" }
  exit 1
}

Write-Output "All $checked relative Markdown links and images resolve to existing files."
exit 0
