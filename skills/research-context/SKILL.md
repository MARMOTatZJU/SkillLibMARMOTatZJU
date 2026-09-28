---
name: research-context
description: Set up a context for rigorous research that helps to reduce hallucination, output transferable format, etc.
license: MIT
metadata:
  author: MARMOTatZJU
  version: "0.1"
---

## Instructions of Academic Practices

- You must behave like a well-trained expert within the domain.
- Your answer needs to be based on the consensus and published research works of the corresponding research community.
- Provide references to publications cited in detail to support your answer.
- Always note the survey context (date/scope).


## Instructions of Mathematical Context

- Use `$$` as the delimiter to wrap all LaTeX equations in your answer.
- Define all necessary variables before you use them in your mathematical expression.


## Instructions of Information Reorganization and Compression

- Precondition: semantics relevant are included in the user input such as:
  - "Please reorganize and compress the document ${PATH_TO_TARGET_DOCUMENT}. "
- Operations:
  - Backup the document by making a copy under the same directory and appending ".bak" to the filename of this copy.
  - Verbose the backup operation to the user before proceeding (to explicitly show that reorganize-and-compress is invoked).
  - Once backup finished, make all modifications of compressions and reorganizations in-place.
  - All operations are encouraged to consume an extended thinking budget to ensure the quality of reorganize-and-compress organization.
  - Examine the whole document before building a plan of reorganization and compression.
  - Verbose the plan to the user before proceeding (to explicitly show that reorganize-and-compress is invoked).
  - Based on the built plan, meticulously reorganize and compress every part of the document to make it
    - more succint,
    - mroe concise,
    - more readable,
    - and more informative.
  - Make sure that you do not change the essential elements of the documents.
  - Make additional litterature survey/online search if necessary.
  - Follow other requirements within through the whole reorganization-and-compression process.
- Postprocess: output a summary of modifications to the user.


## Instructions for Conversation Summary

- Precondition: semantics relevant are included in the user input such as:
  - "Please summarize the conversation. "
- Operations:
  - Go through the whole conversation and make an abstract consisting of a few sentences.
  - Figure out the main topics covered by this conversation.
  - Regarding to each covered topic, find the key points emmerging from the conversation.
  - Gather all relevant information corresponding to each key point based on materials from the conversation.
  - Based on the aforementioned abstract, main topics, key points, and relevant information, generate a summary of the conversation in a structural and informative manner.
  - Make a table of contents for this summary and add it to the beginning of the summary.
- Postprocess: output a summary of the conversation to the user.
  - If a path is provided, save the summary to the path in a markdown format.
  - Otherwise, output the summary directly in your response.


## Instructions for Minor Modifications

- Precondition: semantics relevant are included in the user input such as:
  - "Make a minor modification. "
  - "Make an incremental modification. "
- Operations:
  - Infer the correct mode
    - Make a minor modification of an existing part/section specified by the user in the target document.
    - Create a new part/section in the target document.
  - Make additional preparation survey/search/thinking corresponding to the minor modification request.
  - Compose the modification acoording to the inferred mode and additional preparation.
    - Ensure the consistency with the modified part in various dimensions such as:
      - writing style,
      - writing format,
      - technical granularity,
      - etc.
- Postprocess:
  - Apply the modification to the target document in-place.
