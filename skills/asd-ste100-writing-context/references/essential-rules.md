# Essential ASD-STE100 controls

This is a compact paraphrase of the essential database. Use the rule IDs for traceability. Use the official ASD-STE100 Issue 9 document and dictionary for authoritative wording.

| Rule IDs | Control | Three inline examples |
| --- | --- | --- |
| 1.1–1.4 | Use approved words with their approved meaning, part of speech, and forms. | `Use the valve.`; `Test the circuit.`; `Do not force a synonym that changes the meaning.` |
| 1.5–1.11 | Use necessary technical nouns; keep them short, clear, field-approved, defined when unfamiliar, and stable for one item. | `Define load balancer at first use.`; use `module` consistently; avoid regional slang. |
| 1.12–1.13 | Use necessary technical verbs; do not turn technical verbs into nouns. | `Compile the program.`; `Deploy the service.`; replace `a deploy` with `a deployment` only when the noun is required and approved. |
| 1.14 | Use one spelling variety consistently unless an official directive requires another. | `color` throughout; `centre` throughout when required by policy; preserve literal UI text. |
| 2.1–2.2 | Limit multi-word noun density; for a longer technical noun, write it in full, then make it clear with a short name or hyphens. | `rollback configuration for the service`; define `automatic shutdown system` then use `ASS`; hyphenate a unit term when appropriate. |
| 3.1–3.5 | Use permitted verb forms; avoid complex auxiliaries and progressive “-ing” forms. | `The pump starts.`; `Start the pump.`; replace `has been running` with the permitted simple form when meaning allows. |
| 3.6–3.7 | Use active voice and direct verbs; passive descriptive text is limited to cases where the agent is unknown. | `Remove the cover.`; `Measure the voltage.`; `The casing is sealed.` when the agent is unknown. |
| 4.1–4.5 | Write short complete sentences; use explicit connectors, vertical lists, articles, and demonstratives. | `The valve is closed.`; `First, isolate power.`; `This valve controls the pump.` |
| 5.1–5.5 | Procedures: maximum 20 words per sentence, one instruction per sentence, imperative form, condition first, notes contain information only. | `If the light is red, press Reset.`; `Remove the four screws.`; move `Back up the files` from a note into a step. |
| 6.1–6.6 | Descriptions: general to specific, stable key terms, maximum 25 words per sentence, one topic per paragraph, maximum six sentences per paragraph. | describe the system before the pump; keep startup in one paragraph; split a 40-word sentence. |
| 7.1–7.3 | Safety: identify risk level, start with command or condition, and state hazard or possible result. | `WARNING: Disconnect power.`; `CAUTION: Do not restart during backup.`; state that the archive can be corrupted. |
| 8.1–8.7 | Do not use semicolons; use hyphens for directly related words; apply the standard's word-count conventions. | split `A; B` into two sentences; write `high-pressure line`; count a number-unit pair as specified. |
| 9.1–9.4 | Rewrite when substitution fails; use words correctly; avoid making phrasal verbs; keep wording consistent. | `utilize` → `use`; `take off` → `remove` when intended; repeat `Start the service` for the same action. |
| GR-1–GR-8 | Review “that,” “with,” pronouns, “this,” false friends, Latin abbreviations, inclusive language, and possessive clarity. | write `make sure that`; replace vague `with`; write `for example` instead of `e.g.` |

## Essential preservation rule

Reject any rewrite that removes a condition, qualification, actor, value, identifier, technical distinction, safety consequence, or required action order.

## Passage priorities

1. Safety and procedures: `5.4–5.5`, `7.1–7.3`.
2. Terms and meanings: `1.1–1.4`, `1.8–1.11`, `9.2`, `9.4`.
3. Actor and action: `3.4–3.7`, `5.2–5.3`.
4. Sentence and paragraph load: `4.1–4.4`, `5.1`, `6.1–6.6`.
5. Surface ambiguity: `2.1–2.2`, `4.5`, `8.1–8.7`, `GR-1–GR-6`.
