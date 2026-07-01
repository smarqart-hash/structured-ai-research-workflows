# Method Roots and Inspirations

This workflow is not a new research methodology. It is a compact artifact pattern for making AI-assisted research easier to inspect.

## Traceable research artifacts

The source log, claim ledger, review gate and decision log are inspired by the broader norm that research work should leave a trace: what was considered, what was included, what was excluded and what changed before publication.

This repository is not a PRISMA replacement. It borrows the spirit of transparent reporting and applies it to small AI-assisted research drafts.

Reference: [PRISMA 2020](https://www.prisma-statement.org/prisma-2020)

## Walking skeleton

The workflow starts with a small complete path instead of a large research platform: question -> source log -> claim ledger -> review gate -> decision log -> draft.

That makes the method easy to inspect, adapt and criticize before it grows into tooling.

Reference: [Walking Skeleton, 97 Things Every Software Architect Should Know](https://www.oreilly.com/library/view/97-things-every/9780596800611/ch60.html)

## Claim-first drafting

LLM-assisted writing can add claims while making prose smoother. The claim ledger is a response to that failure mode: important statements should be visible as checkable rows before they become polished paragraphs.

Structured outputs can help produce these rows, but the important point is not the model feature. It is the inspectable claim-to-source trail.

Reference: [OpenAI, Structured Outputs](https://developers.openai.com/api/docs/guides/structured-outputs)

## Review gates and human responsibility

AI can help draft, summarize and reorganize material. It should not become an unaccountable author or reviewer. The workflow therefore records human decisions instead of hiding them behind model output.

References:

- [ICMJE, Defining the Role of Authors and Contributors](https://www.icmje.org/recommendations/browse/roles-and-responsibilities/defining-the-role-of-authors-and-contributors.html)
- [Nature, AI authorship policy](https://www.nature.com/nature-portfolio/editorial-policies/ai)

## Evals for research workflows

This repo treats review as an artifact, not a vibe. A draft should be tested against source support, uncertainty, disclosure and publication-safety checks.

Reference: [Anthropic, Demystifying evals for AI agents](https://www.anthropic.com/engineering/demystifying-evals-for-ai-agents)

## Decision logs

The decision log is inspired by decision-record practices in software architecture: decisions should say what changed, why, and who made the call.

Reference: [Michael Nygard, Documenting Architecture Decisions](https://cognitect.com/blog/2011/11/15/documenting-architecture-decisions)

## Public/private boundary

The publication-safety boundary is part of the method. A public workflow can describe how private research was handled, but it should not turn unpublished manuscripts, reviewer reports or confidential project files into public evidence before they are cleared.
