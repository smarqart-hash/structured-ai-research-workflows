$ErrorActionPreference = "Stop"

$sources = @(
  @{
    Id = "DS-001"
    Url = "https://www.icmje.org/recommendations/browse/artificial-intelligence/ai-use-by-authors.html"
    Pattern = "AI Use by Authors|Artificial Intelligence"
  },
  @{
    Id = "DS-002"
    Url = "https://www.elsevier.com/about/policies-and-standards/generative-ai-policies-for-journals"
    Pattern = "generative AI|Elsevier"
  },
  @{
    Id = "DS-003"
    Url = "https://www.nature.com/articles/d41586-026-00969-z"
    Pattern = "reference|citation|AI"
  },
  @{
    Id = "DS-004"
    Url = "https://www.nature.com/articles/d41586-025-00343-5"
    Pattern = "AI|researchers|survey"
  },
  @{
    Id = "DS-005"
    Url = "https://www.cdc.gov/ai/resources/considerations-for-generative-ai-use-in-scientific-work.html"
    Pattern = "Disclosure|Generative AI|Scientific Work"
  },
  @{
    Id = "DS-006"
    Url = "https://www.nature.com/articles/d41586-025-00894-7"
    Pattern = "peer review|AI"
  },
  @{
    Id = "DS-007"
    Url = "https://www.ieee-ras.org/publications/guidelines-for-generative-ai-usage/"
    Pattern = "Generative AI|IEEE|review"
  },
  @{
    Id = "DS-008"
    Url = "https://hai.stanford.edu/news/ai-detectors-biased-against-non-native-english-writers"
    Pattern = "AI detectors|non-native English"
  },
  @{
    Id = "DS-009"
    Url = "https://deploymentsafety.openai.com/deep-research"
    Pattern = "Deep research|OpenAI"
  },
  @{
    Id = "DS-010"
    Url = "https://www.anthropic.com/engineering/multi-agent-research-system"
    Pattern = "multi-agent|research"
  },
  @{
    Id = "DS-011"
    Url = "https://blog.google/innovation-and-ai/products/notebooklm/better-research-notebooklm/"
    Pattern = "NotebookLM|research"
  }
)

$failures = @()

foreach ($source in $sources) {
  try {
    $response = Invoke-WebRequest -Uri $source.Url -Method Get -MaximumRedirection 5 -TimeoutSec 30 -UseBasicParsing
    $status = [int]$response.StatusCode
    $content = if ($response.Content) { [string]$response.Content } else { "" }

    if ($status -lt 200 -or $status -ge 300) {
      $failures += "$($source.Id): HTTP $status $($source.Url)"
      continue
    }

    if ($content -notmatch $source.Pattern) {
      $failures += "$($source.Id): content marker not found: $($source.Pattern)"
      continue
    }

    Write-Output "OK $($source.Id) HTTP $status marker=$($source.Pattern)"
  } catch {
    $failures += "$($source.Id): $($_.Exception.Message)"
  }
}

if ($failures.Count -gt 0) {
  Write-Output "FAILURES"
  $failures | ForEach-Object { Write-Output $_ }
  exit 1
}

Write-Output "All discourse sources resolved and matched expected content markers."
