# Publication-Safety Review Example

This example is synthetic. It shows a public draft that tries to use private review material as proof.

## Draft paragraph

> A confidential reviewer report confirmed that the workflow caught serious errors in an unpublished manuscript. This proves the process works for publication-grade research.

## Claim ledger

| ID | Claim | Source support | Evidence quality | Confidence | Status | Notes |
|---|---|---|---|---|---|---|
| C-001 | A confidential reviewer report confirmed that the workflow caught serious errors. | S-PRIVATE | Not public | Not usable publicly | Drop | The source is confidential review material. |
| C-002 | The workflow works for publication-grade research. | S-PRIVATE | Low | Low | Drop | Overclaims from private material and implies validation that has not been publicly cleared. |
| C-003 | The workflow is informed by practical work on AI-assisted research and publication-oriented drafting. | Author statement | Low | Medium | Keep with limits | Safe only if it stays abstract and does not imply external validation. |

## Source log

| ID | Source | Type | Date accessed | Relevance | Limits |
|---|---|---|---|---|---|
| S-PRIVATE | Confidential reviewer report | Confidential / internal | 2026-06-30 | Could inform private learning. | Must not be cited, quoted or summarized publicly. |

## Review gate

| ID | Finding | Severity | Required action | Status |
|---|---|---|---|---|
| R-001 | The paragraph reveals the existence and content of confidential review material. | High | Remove the claim. | Resolved |
| R-002 | "Proves the process works" implies stronger validation than the public evidence supports. | High | Drop or replace with a narrower statement. | Resolved |
| R-003 | The draft turns private learning into public proof. | High | Keep only an abstract experience statement. | Resolved |

## Decision log

| ID | Decision | Reason | Evidence / Review input | Owner | Date |
|---|---|---|---|---|---|
| D-001 | Drop C-001. | Confidential material cannot serve as public evidence. | R-001 | Human author | 2026-06-30 |
| D-002 | Drop C-002. | The claim overstates validation and rests on private material. | R-002 | Human author | 2026-06-30 |
| D-003 | Keep C-003 with limits. | The abstract statement explains origin without disclosing private content. | R-003 | Human author | 2026-06-30 |

## Revised paragraph

> This workflow is informed by practical work on AI-assisted research and publication-oriented drafting. It should be treated as a reference pattern, not as evidence that a specific unpublished manuscript or review process validates the method.
