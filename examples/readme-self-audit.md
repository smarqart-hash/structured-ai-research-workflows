# README Self-Audit

This example applies the workflow to this repository's README.

It is a real public artifact from the repository, not a private research case. It does not use unpublished manuscript findings, peer-review files or confidential project material.

## Scope

Artifact:

> `README.md`, public repository draft for `structured-ai-research-workflows`.

Question:

> Does the README explain a useful, inspectable workflow for AI-assisted research without overclaiming what the workflow proves?

## Source Log

| ID | Source | Type | Relevance | Limits |
|---|---|---|---|---|
| S-001 | `README.md` draft | Repository artifact | Main public claim surface. | Self-produced artifact, not external validation. |
| S-002 | `docs/workflow.md` | Method document | Defines the intended artifact sequence. | Describes workflow design, not outcome quality. |
| S-003 | `docs/ai-assisted-research-discourse.md` | Discourse summary | Grounds the positioning in disclosure, source integrity and human responsibility debates. | Secondary synthesis of public guidance and commentary. |
| S-004 | `docs/discourse-source-log.md` | Source log | Records public sources checked for the discourse note. | Link availability can change after access date. |
| S-005 | `docs/public-private-boundary.md` | Safety boundary | Explains why unpublished cases are excluded from the public repo. | Does not prove the method works on private research. |
| S-006 | Reviewer pass, 2026-06-30 | Internal review note | Flagged overclaiming, defensive framing and weak proof surface. | Not published as a standalone source. |

## Claim Ledger

| ID | Claim | Source support | Status | Decision |
|---|---|---|---|---|
| C-001 | The workflow makes AI-assisted research easier to inspect by keeping a source log, claim ledger, review gate, decision log, disclosure note and draft together. | S-001, S-002 | Keep | Use as the central README claim. |
| C-002 | A better chatbot removes the need for separate review artifacts. | None; contradicted by S-002 and S-003 | Drop | Keep the chatbot comparison, but reject this implication. |
| C-003 | The workflow provides accountability. | S-006 flags the term as overloaded. | Revise | Use `inspectable`, `auditable` and `record you can inspect` instead. |
| C-004 | The repository guarantees high-quality AI-assisted research. | None; S-003 supports caution, not a guarantee. | Drop | State that rigor still depends on the reviewer. |
| C-005 | The README can serve as its own public case example. | S-001, S-006 | Keep | Link this self-audit near the top of the README. |

## Review Gate

| ID | Finding | Severity | Required action | Status |
|---|---|---|---|---|
| R-001 | Codex disclosure appeared as a defensive end note instead of evidence for the method. | High | Move disclosure near the top and link the self-audit. | Resolved |
| R-002 | `Accountability` overstates what the workflow delivers. | High | Replace with inspectability and auditable-record language. | Resolved |
| R-003 | The evidence-stack graphic used the wrong geometry for a temporal workflow. | Medium | Replace it with a concrete mini claim-ledger visual. | Resolved |
| R-004 | The README had too many orientation sections. | Medium | Remove `Use it when` and defensive target-audience rows. | Resolved |
| R-005 | The AI-specific distinction from information literacy and annotated bibliographies was underexplained. | Medium | Add a short section on draft-generated claims. | Resolved |

## Decision Log

| ID | Decision | Reason | Evidence / Review input | Owner |
|---|---|---|---|---|
| D-001 | Use the README itself as the public worked example. | It demonstrates the method without exposing unpublished research. | C-005, R-001 | Human author |
| D-002 | Replace `accountability` as a value claim with inspectability language. | The workflow creates a checkable record, not governance enforcement. | C-003, R-002 | Human author |
| D-003 | Replace the evidence-stack image with a mini claim-ledger visual. | A shown artifact explains the method better than another abstract diagram. | R-003 | Human author |
| D-004 | Remove defensive audience rows and the separate `Use it when` section. | The README should feel decisive and faster to scan. | R-004 | Human author |
| D-005 | Add an AI-specific differentiation section. | The drafting step can create claims that traditional source notes do not catch by themselves. | R-005 | Human author |

## Final Edit Summary

The README now presents the repository as a small, inspectable workflow rather than a broad claim about AI research quality. The disclosure moved from the end into the method. The example is public and reproducible: it shows a claim ledger, review findings and decisions for the README itself.
