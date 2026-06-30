# Discourse Source Log

This log supports [AI-Assisted Research Discourse](ai-assisted-research-discourse.md).

Links and expected content markers were checked on 2026-06-30 with [`scripts/check-discourse-sources.ps1`](../scripts/check-discourse-sources.ps1). The check verifies that each URL resolves and that the fetched content contains an expected title or topic marker.

This is still not archival preservation. For a formal publication, add archived snapshots or persistent captures. For this repository, the script makes the current source check repeatable.

| ID | Source | Type | Date checked | Relevance | Limits |
|---|---|---|---|---|---|
| DS-001 | ICMJE, "AI Use by Authors" | Guidance | 2026-06-30 | Human accountability and disclosure expectations for AI use by authors. | Medical-journal context. |
| DS-002 | Elsevier generative AI policies | Publisher policy | 2026-06-30 | Publisher-side rules for AI-assisted writing and review. | One publisher family; not a universal policy. |
| DS-003 | Nature on invalid references in AI-assisted manuscripts | News / analysis | 2026-06-30 | Citation-integrity risk and fabricated-reference concern. | News analysis, not a full cross-field audit. |
| DS-004 | Nature survey coverage on researcher use and concerns | News / survey coverage | 2026-06-30 | Shows growing use and contested norms around AI-assisted research. | Survey framing and sample matter. |
| DS-005 | CDC suggested disclosure elements for generative AI use in scientific work | Institutional guidance | 2026-06-30 | Concrete disclosure fields: tool, task, affected content and human checking. | US public-health/scientific-work context. |
| DS-006 | Nature on AI and peer review concerns | News / analysis | 2026-06-30 | Confidentiality and integrity risks in AI-assisted peer review. | News analysis, not a policy standard. |
| DS-007 | IEEE RAS generative AI usage guidelines | Professional-society guidance | 2026-06-30 | Confidentiality cautions and reviewer responsibilities. | Robotics and automation society context. |
| DS-008 | Stanford HAI on AI detector bias | Research communication | 2026-06-30 | Detector-based governance risk and bias against non-native writers. | Focuses on detection, not research workflow design. |
| DS-009 | OpenAI Deep Research deployment-safety page | System / safety documentation | 2026-06-30 | Example of longer-horizon, source-heavy AI research tooling. | Vendor document; not independent evaluation. |
| DS-010 | Anthropic multi-agent research system | Engineering write-up | 2026-06-30 | Example of multi-agent research workflow direction. | Vendor engineering perspective. |
| DS-011 | Google NotebookLM research features | Product announcement | 2026-06-30 | Example of source-grounded research-assistant tooling. | Product announcement; not independent evaluation. |

## Check method

Run from the repository root:

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\check-discourse-sources.ps1
```

The script checks both HTTP reachability and expected content markers. A resolving URL is not enough.

## URLs

- DS-001: https://www.icmje.org/recommendations/browse/artificial-intelligence/ai-use-by-authors.html
- DS-002: https://www.elsevier.com/about/policies-and-standards/generative-ai-policies-for-journals
- DS-003: https://www.nature.com/articles/d41586-026-00969-z
- DS-004: https://www.nature.com/articles/d41586-025-00343-5
- DS-005: https://www.cdc.gov/ai/resources/considerations-for-generative-ai-use-in-scientific-work.html
- DS-006: https://www.nature.com/articles/d41586-025-00894-7
- DS-007: https://www.ieee-ras.org/publications/guidelines-for-generative-ai-usage/
- DS-008: https://hai.stanford.edu/news/ai-detectors-biased-against-non-native-english-writers
- DS-009: https://deploymentsafety.openai.com/deep-research
- DS-010: https://www.anthropic.com/engineering/multi-agent-research-system
- DS-011: https://blog.google/innovation-and-ai/products/notebooklm/better-research-notebooklm/
