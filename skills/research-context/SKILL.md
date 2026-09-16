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
