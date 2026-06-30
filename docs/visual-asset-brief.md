# Visual Asset Brief

## Goal

Create one strong visual asset that explains the repository in one glance:

> A chatbot gives an answer. This workflow leaves a trail.

The visual should work as:

- GitHub social preview,
- README hero image,
- LinkedIn launch image,
- first slide in a short presentation.

## Why image generation is appropriate

Current OpenAI image generation is strong enough for this use case. OpenAI's image generation documentation positions GPT Image models for complex visuals, infographics, diagrams, text-heavy images, UI mockups and production workflows. The relevant constraint is not "do not use image generation." The constraint is: specify the layout tightly, keep labels few and exact, and review the output before committing it.

Official OpenAI references:

- ChatGPT Images 2.0 examples include editorial posters, brochure layouts, academic posters, infographics, multilingual typography and structured visual explanations: https://openai.com/index/introducing-chatgpt-images-2-0/
- OpenAI's GPT Image prompting guide describes the image models as suitable for production-quality visuals, controllable creative workflows and reliable text rendering with crisp lettering and consistent layout: https://developers.openai.com/cookbook/examples/multimodal/image-gen-models-prompting-guide
- OpenAI's ChatGPT Images update highlights stronger instruction following, more precise editing and improved dense text rendering: https://openai.com/index/new-chatgpt-images-is-here/

## Desired visual

Format:

- 1200x630 landscape
- clean editorial explainer
- light background
- no robots, brains, sparkles or magic imagery
- no generic network graph
- no fake screenshots of real products

Composition:

- left side: a single smooth chatbot answer, visually opaque
- right side: an inspectable research trail
- the trail has six visible objects:
  - Source log
  - Claim ledger
  - Review gate
  - Decision log
  - Disclosure
  - Draft

Exact text to render:

- Title: `AI-assisted research with receipts`
- Subtitle: `A chatbot gives an answer. This workflow leaves a trail.`
- Labels: `Source log`, `Claim ledger`, `Review gate`, `Decision log`, `Disclosure`, `Draft`

## Prompt for ChatGPT Images / GPT Image

```text
Create a polished editorial explainer image for a GitHub README and social preview.

Canvas:
- 1200x630 landscape
- clean off-white background
- modern editorial design
- restrained, professional, credible
- no robots, no brains, no sparkles, no futuristic glow

Core idea:
Show the difference between a simple chatbot answer and an inspectable AI-assisted research workflow.

Layout:
Left side:
- one smooth rounded card labeled exactly: "Answer"
- the card should feel opaque and hard to inspect
- below it, a small muted note: "Hard to check later"

Right side:
- a visible trail of connected cards
- card labels exactly:
  1. "Source log"
  2. "Claim ledger"
  3. "Review gate"
  4. "Decision log"
  5. "Disclosure"
  6. "Draft"
- use simple arrows or a subtle path between the cards
- make the right side feel structured, inspectable, and calm

Title text at top:
"AI-assisted research with receipts"

Subtitle text under title:
"A chatbot gives an answer. This workflow leaves a trail."

Style:
- typography should be crisp and legible
- use dark charcoal text
- use muted blue/slate for claims, muted green for sources, amber for review, gray for decisions
- keep all labels exactly as written
- no extra text
- no logos
- no watermarks
- no decorative complexity
```

## Iteration prompt

If the first result is close but imperfect:

```text
Keep the same composition and style.
Fix only the text and layout.
Render these labels exactly:
"AI-assisted research with receipts"
"A chatbot gives an answer. This workflow leaves a trail."
"Answer"
"Hard to check later"
"Source log"
"Claim ledger"
"Review gate"
"Decision log"
"Disclosure"
"Draft"
Do not add any other words.
Keep all text crisp and readable.
```

## Acceptance criteria

Accept the image only if:

- all text is spelled exactly,
- no extra text appears,
- the visual contrast is understandable in three seconds,
- it does not look like an autonomous-agent product,
- it does not use robot/brain/sparkle imagery,
- it works at small preview size.

If text is imperfect after two iterations, simplify the prompt and reduce labels before falling back to deterministic text overlays. The default assumption should be that generated imagery is viable for the primary README/social asset.

## Primary direction

The primary direction should preserve the answer-versus-trail contrast, not introduce a new metaphor. The current 1200x630 asset is stored as `assets/social-preview-og.png`.

- title and subtitle at top,
- left side: opaque `Answer` card,
- right side: six-card trail,
- exact labels,
- restrained editorial style.

Use the current PNG as a structural reference if editing or regenerating.

## Current visual assets

- `assets/social-preview-og.png`: primary README/social preview.
- `assets/mini-claim-ledger.png`: shows a filled claim-ledger row set from the README self-audit.
- `assets/interface-splitscreen.png`: shows normal chat/CLI use beside the research packet.
- `assets/claim-lifecycle.png`: shows candidate claims moving through source check, keep/revise/drop, draft and recheck.

## Additional visual concepts

These are complementary explainers. They should not all appear in the README. Use one primary visual in the README, then add the others in docs, slides or a launch post where they answer a specific question.

### 1. Split-screen: chat interface vs. research packet

Best use:

- README section near the interface walkthrough.
- Slide explaining how the method feels in practice.
- LinkedIn carousel frame.

Message:

> The user can keep working in a normal chat or CLI. The difference is that claims, sources, review findings and decisions are captured beside the conversation.

Visual idea:

- Left panel: a minimal chat or terminal window with a user prompt and a short AI brief.
- Right panel: a tidy research packet with four tabs: Source log, Claim ledger, Review gate, Decision log.
- A few subtle arrows connect chat output to packet rows.
- The image should feel practical, not futuristic.

Exact labels:

- `Chat / CLI`
- `Research packet`
- `Source log`
- `Claim ledger`
- `Review gate`
- `Decision log`
- `Candidate claim`
- `Human decision`

Prompt:

```text
Create a clean editorial explainer image, 1200x630 landscape.

Show a split-screen workflow for AI-assisted research.

Left side:
- a simple chat or command-line interface titled exactly "Chat / CLI"
- show a short generic prompt block and a short assistant response block
- do not include real product names, logos or realistic private content
- include one small label exactly "Candidate claim"

Right side:
- a structured research packet titled exactly "Research packet"
- show four tidy tabs or cards labeled exactly:
  "Source log"
  "Claim ledger"
  "Review gate"
  "Decision log"
- include one small label exactly "Human decision"

Use subtle arrows from the chat response to the packet cards.
Style: off-white background, dark charcoal text, muted blue/slate, green, amber and gray accents.
No robots, no brains, no sparkles, no futuristic glow.
Keep the image calm, practical and credible.
Render all labels exactly as written. Do not add extra words.
```

Acceptance criteria:

- A non-technical reader understands that the chat is still there, but the method adds a side packet.
- The visual does not imply a proprietary app.
- Text labels are exact.

### 2. Claim lifecycle: from candidate to kept, revised or dropped

Best use:

- `docs/workflow.md`
- Practitioner slides.
- Explaining why drafting needs a second verification pass.

Message:

> A claim is not born true. It moves through states.

Visual idea:

- A horizontal or circular path.
- Start: Candidate claim.
- Then: Source check.
- Branches:
  - Keep
  - Revise
  - Drop
- Then: Draft.
- Then: Recheck.
- One small warning callout: Drafting can create new claims.

Exact labels:

- `Candidate claim`
- `Source check`
- `Keep`
- `Revise`
- `Drop`
- `Draft`
- `Recheck`
- `New claim?`

Prompt:

```text
Create a polished explanatory diagram, 1200x630 landscape.

Topic: claim lifecycle in AI-assisted research.

Show that a claim moves through states before it enters a final draft.

Layout:
- left to right flow, with one branch in the middle
- start card labeled exactly "Candidate claim"
- next card labeled exactly "Source check"
- branch into three cards labeled exactly:
  "Keep"
  "Revise"
  "Drop"
- "Keep" and "Revise" continue to a card labeled exactly "Draft"
- after "Draft", show a card labeled exactly "Recheck"
- add one small callout near Draft labeled exactly "New claim?"

Style:
- clean editorial diagram
- off-white background
- dark charcoal text
- muted green for Keep
- amber for Revise
- muted red only for Drop
- blue/slate for neutral process steps
- no extra text
- no logos
- no robot or brain imagery
```

Acceptance criteria:

- Branches are visually clear.
- `Drop` is not visually dominant; the point is disciplined filtering, not alarm.
- The diagram makes the second check after drafting obvious.

### 3. Mini claim ledger: where the proof becomes visible

Best use:

- README lower section.
- One-slide pitch.
- CV/portfolio framing.

Message:

> A claim is not trusted because it sounds polished. It is kept, revised or dropped because the source support and review decision are visible.

Visual idea:

- A clean table-like artifact, close to a screenshot but not pretending to be a real product UI.
- Columns: ID, Claim, Source support, Status, Decision.
- Rows show one kept claim, one revised claim and one dropped claim.
- The status colors should be restrained: green for Keep, amber for Revise, muted red for Drop.
- A small footer can show the canonical sequence: Source log -> Claim ledger -> Review gate -> Decision log -> Disclosure -> Draft.

Exact labels:

- `ID`
- `Claim`
- `Source support`
- `Status`
- `Decision`
- `Keep`
- `Revise`
- `Drop`

Prompt:

```text
Create a high-quality editorial explainer image, 1200x630 landscape.

Show a mini claim ledger for AI-assisted research.

Composition:
- a clean table artifact with five columns labeled exactly:
  "ID", "Claim", "Source support", "Status", "Decision"
- include three rows:
  1. a kept claim
  2. a revised claim
  3. a dropped claim
- include status pills labeled exactly:
  "Keep", "Revise", "Drop"
- add a small footer sequence:
  "Source log -> Claim ledger -> Review gate -> Decision log -> Disclosure -> Draft"

Style:
- off-white background
- dark charcoal text
- calm professional colors
- sources in muted green
- claims in muted blue/slate
- review in amber
- decisions in gray
- no robots, no brains, no sparkles
- no extra words
- make the text crisp and readable
```

Acceptance criteria:

- The table reads instantly as a real artifact, not an abstract metaphor.
- The statuses are legible at README size.
- The graphic reinforces the canonical sequence without adding a second metaphor.
