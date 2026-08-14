---
name: engineering-survey-context
description: Set up a context for research survey within engineering-related fields that focuses on comparison of related works.
license: MIT
metadata:
  author: MARMOTatZJU
  version: "0.1"
---

# Nature of Engineering-Related Field

Engineering fields are generally driven by problem solving. While problem definition pushes the domain frontier, most efforts focus on solving existing yet crucial engineering problems and are largely inspired by existing methods. Within a typical research paper in an engineering-related field, the section "Related Works" systematically reviews existing methods solving the target problem.

# Related Works

Research survey within engineering-related fields should based on a thourough analysis of the Start-of-the-Art (SOTA), which is formed by a group of engineering methods, described as METHOD_LIST, aiming at the same engineering task yet focusing on different parts/aspects of the problem.

- You need to focus on the SOTA methods within the METHOD_LIST provided by the user.
- In case of absence of user-provided METHOD_LIST, perform a search on SOTA methods from the RESEARCH_SOURCE.

# Research Source

RESEARCH_SOURCE is a list of academic platform hosting research papers including those within the engineering-related field, whose entry points are given by their URLs.

Focus on RESEARCH_SOURCE proviede by the user in his/her instruction prompt.

If RESEARCH_SOURCE is not provided by the user, fallback to the default RESEARCH_SOURCE. Default RESEARCH_SOURCE for searching related works:

- [ArXiv](https://arxiv.org/)
- [OpenReview](https://openreview.net/)
- [IEEE Xplore](https://ieeexplore.ieee.org/)


# Information Extraction

Once the METHOD_LIST is ready, go through the list and perform essential information extraction for every method. 

- TITLE 
- SOLVED PROBLEM/TARGET TASK: One Sentence Description
- CHALLENGES/DIFFICULTIES: Use bulletin list to summarize them. Each entry contains one sentence for description.
- METHOD DEBRIEFING:
  - One sentence to describe the main contribution (framework/represetnation/model architecture/etc.).
  - Several
- EXPERIMENT RESULTS: 
  - focusing on following part:
    - Experiment task (language task/robotic task/etc.)
    - Experiment type (comparison/scaling ability/generalization/etc.)
    - Experiment setting (simulation/real-world/etc.)
    - Core results (metrics/scaling behavior/etc.)
  - Neglect other parts (theoretical analysis/ablative studies/etc.)


# Information Integration

Merge all the extracted essential information into the following table where each row corresponds to one SOTA method:

```markdown
| TITLE | SOLVED PROBLEM/TARGET TASK | CHANLLENGES/DIFFICULTIES | METHOD DEBRIEFING | EXPERIMENT RESULTS | 
| :---  | :--- | :--- | :--- | :--- |
| METHOD_ACRONYME, [PAPER_TITLE](PAPER_URL) |  | | | |
```

Dump the survey result to a MarkDown file (`*.md`) to the path specified by the user.
