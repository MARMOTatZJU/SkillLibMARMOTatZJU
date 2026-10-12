---
name: asd-ste100-writing-context
description: Apply the essential ASD-STE100 Issue 9 Simplified Technical English writing controls when drafting, editing, reviewing, or rewriting technical documentation, procedures, runbooks, safety instructions, UI text, API documentation, or assistant responses for clarity, consistency, translation readiness, and action safety. Use when a user requests ASD-STE100, Simplified Technical English, controlled technical English, STE-style writing, or a readability review based on ASD-STE100.
license: MIT
metadata:
  author: GPT-6.1-Sol-Ultra
  version: "1.0"
---

# ASD-STE100 writing context

Use this skill to produce clear, controlled technical English in any compatible agent or model environment. Preserve the author's technical meaning, values, identifiers, conditions, safety information, and action order.

## Operating rules

1. Classify the passage before editing it: procedure, safety instruction, description, interface text, reference text, or general explanation.
2. Read [essential-rules.md](references/essential-rules.md) for the applicable controls. Read [review-checklist.md](references/review-checklist.md) before finalizing.
3. Select one term for each concept. Use necessary technical nouns and verbs, but define unfamiliar terms and avoid slang, regionalisms, and decorative synonyms.
4. Check each important word for its intended meaning and part of speech. Do not force a simpler word if it changes the technical meaning.
5. Prefer direct verbs and visible actors. Use active voice in procedures. Use passive voice in descriptive text only when the agent is unknown.
6. For procedures, put conditions before commands, use imperative steps, keep one instruction per sentence, and keep each sentence within 20 words using the standard's counting conventions.
7. Keep required actions out of notes. Put warnings and cautions before the guarded step. State the risk, action or condition, and consequence.
8. For descriptions, move from general to specific, use one topic per paragraph, keep paragraphs to six sentences or fewer, and keep sentences within 25 words.
9. Use vertical lists for complex sequences or several items. Keep list grammar and punctuation parallel. Add explicit connectors for cause, order, contrast, and result.
10. Avoid unnecessary noun stacks, complex auxiliary constructions, progressive “-ing” forms, contractions, semicolons, ambiguous pronouns, unclear “this,” vague “with,” Latin abbreviations, and uncontrolled phrasal verbs.
11. Keep terminology, spelling variety, and recurring wording consistent throughout the document.
12. After editing, perform a human domain review. Report dictionary compliance separately from readability; this skill does not replace the official ASD dictionary or certification review.

## Rewrite method

When asked to improve text:

1. Identify the reader's action or information need.
2. Preserve every technical constraint.
3. Detect the highest-risk ambiguity: term meaning, actor, condition, sequence, reference, or consequence.
4. Rewrite the sentence or paragraph around the intended meaning. Do not perform a forced word-for-word substitution.
5. Apply the passage-type limits and structure.
6. Recheck terminology and safety information.
7. Return the revised text and a short change log citing rule IDs, such as `5.3` or `7.1–7.3`, when useful.

## Response behavior

- Write the response itself in the same controlled style when the task is technical writing.
- Prefer concrete wording and short paragraphs.
- Ask for clarification only when the missing information affects technical meaning, safety, terminology, or the required document function.
- If a source rule and a project requirement conflict, preserve the project requirement and identify the conflict for human review.
- Never call a draft “ASD-STE100 compliant” or “certified” without a verified dictionary and applicable source review.

## Resources

- [essential-rules.md](references/essential-rules.md): compact rule database with rule IDs and boundaries.
- [review-checklist.md](references/review-checklist.md): final review questions.
- The larger working database is at `../ASD-STE100-DOC/`.
- The supplied source is at `../ASD-STE100_ISSUE9.pdf` when local source verification is required.
