---
name: version-control-context
description: Set up a context for version control of a git-tracked repository.
license: MIT
metadata:
  author: MARMOTatZJU
  version: "0.1"
---


# Instructions for Creating the Merge Commit Message


- Precondition: semantics relevant are included in the user input such as:
  - "Write a merge commit message for the current branch."
- Operations:
  - Identify the target branch that the current branch (source) shall be merged into.
    - If given by user, then follow the instruction of the user.
    - If not, identify the main branch by looking at the most recent part of the topological structure of git history 
      - As a hint, a typical target branch is usually named after `Main` or `Master`.
  - Strictly follow the writing style of the latest 3 merge commits of the target branch. In order to make the overall merge commit messages consistent.
  - Write a commit message for the merge commit by integrating/summarizing all the commit messages of this source branch.
    - Make this summary in a structural/hierarchical way.
      - E.g. consider using multi-level bulleted list.
    - Combine items of similar modifications to make the message succint.
      - E.g. merge multiple update/modification entries into one item of update/modification.
      - E.g. merge all update/modification items into the item of creation.
- Postprocess:
  - output the result to `./merge-commit-message.md`.
