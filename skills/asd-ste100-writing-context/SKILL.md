---
name: asd-ste100-writing-context
description: Apply the essential ASD-STE100 Issue 9 Simplified Technical English writing controls when drafting, editing, reviewing, or rewriting technical documentation, procedures, runbooks, safety instructions, UI text, API documentation, or assistant responses for clarity, consistency, translation readiness, and action safety. Use when a user requests ASD-STE100, Simplified Technical English, controlled technical English, STE-style writing, or a readability review based on ASD-STE100.
license: MIT
metadata:
  author: GPT-6.1-Sol-Ultra
  version: "1.1"
---

# ASD-STE100 writing context

Use this skill to produce clear, controlled technical English in any compatible agent or model environment. Preserve the author's technical meaning, values, identifiers, conditions, safety information, and action order.

## Operating rules

1. Classify the passage before editing it: procedure, safety instruction, description, interface text, reference text, or general explanation. **Examples:** `Remove the cover.` = procedure; `WARNING: Disconnect power.` = safety; `The pump supplies clean air.` = description.
2. Read [essential-rules.md](references/essential-rules.md) for the applicable controls. Read [review-checklist.md](references/review-checklist.md) before finalizing. **Examples:** read procedure controls before a runbook; read safety controls before a warning; read the final checklist before publishing an API guide.
3. Select one term for each concept. Use necessary technical nouns and verbs, but define unfamiliar terms and avoid slang, regionalisms, and decorative synonyms. **Examples:** use `valve` throughout; define `load balancer` once; replace `kick off the job` with `start the job`.
4. Check each important word for its intended meaning and part of speech. Do not force a simpler word if it changes the technical meaning. **Examples:** use `test` as the approved part of speech; use `follow` only for the intended sense; keep `torque` when `turn` would lose the engineering meaning.
5. Prefer direct verbs and visible actors. Use active voice in procedures. Use passive voice in descriptive text only when the agent is unknown. **Examples:** `Measure the voltage.`; `The operator closes the valve.`; `The casing is made of aluminum.` when the maker is unknown.
6. For procedures, put conditions before commands, use imperative steps, keep one instruction per sentence, and keep each sentence within 20 words using the standard's counting conventions. **Examples:** `If the light is red, press Reset.`; `Remove the four screws.`; `Back up the database. Stop the service.`
7. Keep required actions out of notes. Put warnings and cautions before the guarded step. State the risk, action or condition, and consequence. **Examples:** move `Back up the files` from a NOTE into a step; place `WARNING` before a power-off step; write `CAUTION: Do not restart during backup. This can corrupt the archive.`
8. For descriptions, move from general to specific, use one topic per paragraph, keep paragraphs to six sentences or fewer, and keep sentences within 25 words. **Examples:** describe the system before its pump; give one paragraph about startup and another about shutdown; split a 40-word explanation into two sentences.
9. Use vertical lists for complex sequences or several items. Keep list grammar and punctuation parallel. Add explicit connectors for cause, order, contrast, and result. **Examples:** list `1. Open the cover. 2. Remove the filter.`; make every item start with a verb; write `Because the seal is worn, replace it.`
10. Avoid unnecessary noun stacks, complex auxiliary constructions, progressive “-ing” forms, contractions, semicolons, ambiguous pronouns, unclear “this,” vague “with,” Latin abbreviations, and uncontrolled phrasal verbs. **Examples:** `configuration for service rollback`; `The unit is ready`, not `has been being prepared`; `Do not use`, not `don't use`.
11. Keep terminology, spelling variety, and recurring wording consistent throughout the document. **Examples:** choose `module` instead of alternating `module`, `component`, and `unit`; use one spelling of `color/colour`; repeat `Start the service` for the same action.
12. After editing, perform a human domain review. Report dictionary compliance separately from readability; this skill does not replace the official ASD dictionary or certification review. **Examples:** ask an engineer to verify a torque value; ask a safety reviewer to verify a warning; label a draft `STE-aligned` rather than `certified` when dictionary checking is incomplete.

## Rewrite method

When asked to improve text:

1. Identify the reader's action or information need. **Examples:** operate a pump; understand an error; decide whether a warning applies.
2. Preserve every technical constraint. **Examples:** retain `24 V`; retain `port 443`; retain the condition `only when the backup is complete`.
3. Detect the highest-risk ambiguity: term meaning, actor, condition, sequence, reference, or consequence. **Examples:** unclear `it`; late `if` clause; two names for one component.
4. Rewrite the sentence or paragraph around the intended meaning. Do not perform a forced word-for-word substitution. **Examples:** `Utilize` → `Use`; `make a measurement` → `Measure`; rebuild a long conditional sentence as two steps.
5. Apply the passage-type limits and structure. **Examples:** imperative procedure; condition-first safety step; general-to-specific description.
6. Recheck terminology and safety information. **Examples:** verify every occurrence of `valve`; check a warning's consequence; confirm that a numeric limit survived the rewrite.
7. Return the revised text and a short change log citing rule IDs, such as `5.3` or `7.1–7.3`, when useful. **Examples:** `Changed passive command to imperative (5.3)`; `Moved condition before command (5.4)`; `Added risk consequence (7.3)`.

## Response behavior

- Write the response itself in the same controlled style when the task is technical writing. **Examples:** `Open the file.`; `The service sends data to the server.`; `WARNING: Disconnect power first.`
- Prefer concrete wording and short paragraphs. **Examples:** replace `facilitate commencement` with `help start`; split a five-clause paragraph; use a list for three steps.
- Ask for clarification only when the missing information affects technical meaning, safety, terminology, or the required document function. **Examples:** ask which voltage applies; ask whether a warning concerns people or equipment; ask whether text is a procedure or description.
- If a source rule and a project requirement conflict, preserve the project requirement and identify the conflict for human review. **Examples:** retain a mandated product name; retain required legal wording; flag a project limit that differs from the 20-word procedure limit.
- Never call a draft “ASD-STE100 compliant” or “certified” without a verified dictionary and applicable source review. **Examples:** say `STE-aligned draft`; say `dictionary review pending`; say `human certification review required`.

## Bundled resources

- [essential-rules.md](references/essential-rules.md): compact rule database with rule IDs and boundaries. **Examples:** use it for a procedure rewrite; use it for a warning review; use it for terminology triage.
- [review-checklist.md](references/review-checklist.md): final review questions. **Examples:** run it before publishing a manual; run it after editing API errors; run it after changing safety text.
- [source-boundary.md](references/source-boundary.md): self-contained provenance, scope, and verification limits. **Examples:** check whether a claim is source-derived; distinguish a paraphrase from a quotation; decide when to request a human dictionary review.

Use only these bundled resources while this skill is active. Do not assume that the larger database, the original PDF, network access, or any parent-directory file is available.
