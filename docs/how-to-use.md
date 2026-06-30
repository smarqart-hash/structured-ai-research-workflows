# How To Use This Workflow

## Start small

Do not begin with a full report.

Begin with one question, five to ten sources and one draft section. The workflow works best when the first run is small enough to inspect by hand.

A good first question looks like this:

> Under what conditions do major publishers permit AI-assisted research writing?

A weak first question looks like this:

> Tell me everything about AI in research.

The first question can be checked. The second one invites a smooth essay with no edges.

## The 30-minute version

This is the fastest useful pass. It will not produce a perfect report. It will produce a checkable packet.

### 1. Define the question

Write one sentence:

> I am trying to answer: ...

Then write what is out of scope:

> I am not trying to answer: ...

This prevents the AI from turning a narrow question into a general lecture.

### 2. Collect sources

Fill the [source log](../templates/source-log.md) as you go.

At minimum, capture:

- source title or URL,
- source type,
- date accessed,
- why it matters,
- what it cannot prove.

The last field is important. A source that supports one claim often cannot support the next one.

### 3. Generate a first brief

Ask the AI for a structured brief, not a final draft.

Suggested prompt:

```text
Use the sources below to create a research brief.

For every important statement, assign a claim ID.
Do not write a polished article yet.
Separate supported claims, uncertain claims and source gaps.
If a source does not support a claim, say so.
```

### 4. Build the claim ledger

Move the important statements into the [claim ledger](../templates/claim-ledger.md).

Each row should contain one checkable claim. If a sentence contains three claims, split it into three rows.

Bad:

> AI is widely accepted by publishers and improves literature reviews.

Better:

- Some publishers permit AI-assisted writing under conditions.
- AI-assisted writing often requires disclosure.
- This source does not show that AI improves literature reviews.

### 5. Verify before drafting

Mark every claim:

- Keep: supported and appropriately qualified.
- Revise: partly supported, too broad or missing a qualifier.
- Drop: unsupported, private, confidential or too risky.

Do not draft from dropped claims.

### 6. Draft from the surviving claims

Now ask for prose.

Suggested prompt:

```text
Draft a short section using only claims marked Keep or Revise.

Keep the claim IDs in comments or brackets.
Do not introduce new factual claims unless you mark them as NEW-CLAIM.
```

### 7. Verify the draft again

This is the step people skip.

They should not. Drafting creates new claims: transitions, causal language, stronger verbs, broader conclusions. Good prose can make weak evidence look stronger than it is.

Add any new claims back to the ledger.

### 8. Run the review gate

Use the [review gate](../templates/review-gate.md).

For a small piece, use at least two lenses:

- Skeptical reviewer: where does the argument overstate?
- Non-expert reader: where does the text become unclear?

For public or publication-oriented work, add:

- Publication-safety reviewer: does anything reveal private, confidential or unpublished material?

### 9. Record decisions

Use the [decision log](../templates/decision-log.md).

This does not need to be long. It only needs to show the human calls:

- kept despite uncertainty,
- revised for precision,
- removed because the evidence was too weak,
- removed because the material was not public-safe.

### 10. Write a disclosure note

A useful disclosure is specific:

> AI was used to summarize sources, identify candidate claims and draft a first version. The author checked claims against the source log, revised unsupported claims and made final editorial decisions.

A weak disclosure is vague:

> AI was used.

## When to use the full version

Use the full workflow when:

- the output may be published,
- someone else will rely on the findings,
- the topic involves legal, medical, financial, political or scientific claims,
- sources disagree,
- private or unpublished material is involved,
- the draft could make the evidence sound stronger than it is.

Use a lighter version when:

- you are exploring a topic privately,
- the output is not being cited,
- the question is low-stakes,
- you only need orientation before doing proper research.

## Minimum viable artifact set

For a serious draft, keep at least these four files:

- `source-log.md`
- `claim-ledger.md`
- `review-gate.md`
- `decision-log.md`

That is enough to make the work inspectable without building a full research system.
