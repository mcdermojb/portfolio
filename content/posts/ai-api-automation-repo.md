---
title: "Automating Our API Documentation Review Pipeline"
date: 2026-06-10
description: "How we integrated a custom Gemini AI review skill into our GitHub CI/CD pipeline to eliminate manual API string reviews and reduce PR cycle times."
tags: ["API Documentation", "AI", "Docs-as-Code", "Automation", "CI-CD"]
draft: false
---

Every time a developer submitted a Git pull request (PR) containing API validation messages or Swagger documentation, it included roughly 70 to 100 strings. Reviewing these manually was a massive time sink, averaging about an hour per PR. In most cases, these strings required repetitive style updates. In a minority of cases, they demanded deep-dive edits—clarifying feature mechanics, fixing terminology, or pulling API code into a local client to verify behavior.

Initially, I handled this entirely by hand. To reclaim editorial bandwidth, I built a custom Gemini Gem to automate the initial pass. While the Gem saved analytical effort, it introduced a new mechanical bottleneck: copying strings from the PR, pasting them into Gemini, evaluating the output, and manually transcribing changes back into GitHub. 

Recognizing an opportunity when our engineering team began championing AI automation, I partnered with developers to integrate the Gem directly into their CI/CD skills pipeline.

## Implementation roadmap

1. **Auditing the Effort:** Identified the manual review bottleneck and quantified its cost (1 hour per 70–100 strings).
2. **Building the Prototype:** Created a custom Gemini Gem to evaluate raw strings against style guides.
3. **Identifying Friction:** Pinpointed the copy-paste transcription loop between the browser interface and GitHub.
4. **Automating the Pipeline:** Embedded the Gem into the team's automated skills pipeline to remove manual touchpoints.
5. **Enforcing Standards:** Established a strict style hierarchy so the AI operates as a deterministic gatekeeper.
6. **Refining Output:** Built a feedback loop using "gold standard" test files to calibrate string quality.

## Overcoming the manual bottleneck

Reviewing REST API validation messages and OpenAPI/Swagger properties required verifying capitalization, verb tense, and phrasing. Reviewing these by hand was tedious and unscalable. Automating the initial pass freed editorial time to focus on high-impact documentation architecture and user experience.

### Integrating AI into the pipeline

We built an AI-powered doc review skill designed to act as an automated technical editor. Rather than reviewing raw files manually, the pipeline feeds `.properties` and OpenAPI files into the skill. The AI evaluates input strings against defined guidelines, flags rule violations, and suggests corrected values directly within the PR workflow.

### Establishing a clear style hierarchy

To prevent subjective or conflicting edits, we established a strict style hierarchy:

* **Primary Authority (Microsoft Manual of Style):** Governs active voice, American English spelling, second-person pronouns, and technical jargon avoidance.
* **Secondary Authority (Internal Style Guide):** Governs domain-specific rules, such as formatting `.summary` key strings as Title Case section headings.

The AI applies these rules systematically—converting informal phrasing (e.g., changing "One of:" to "Valid values are:") and shifting passive constructions to active present tense.

### Building a feedback loop

Prompt engineering required continuous calibration against real PRs. When early test runs showed the AI struggling to distinguish Title Case headings from sentence-case property descriptions, we updated prompt rules to classify `.summary` strings as section titles. We also calibrated the skill against a gold-standard `auditlogs.json` file, ensuring Data Transfer Object (DTO) field descriptions consistently begin with the definite article "The."

### Eliminating human error

Direct pipeline integration eliminates transcription errors. When a developer submits an API PR, the review skill runs automatically before human review. It catches missing relative pronouns, sentence fragments, and first-person references immediately, allowing technical writers to focus on how API updates impact overall user workflows.

---

## Next steps: Scaling and metrics

Because this pipeline enhancement has not yet completed a high-volume release cycle, the next phase focuses on capturing performance metrics and executing a cross-repository rollout.

### Tracking velocity improvements

To quantify manual time saved, we are measuring three core metrics during pilot sprints:

* **PR Cycle Time:** Average duration from PR creation to merge for API-related updates before vs. after automation.
* **Review Hours Saved:** Total API PRs multiplied by the baseline review duration (1 hour per PR).
* **Comment Reduction:** Volume of documentation-related PR comments (targeting near-zero to confirm style issues are resolved pre-commit).

### Organization-wide rollout plan

To deploy this automation across engineering repositories cleanly:

1. **Pilot Program:** Run the skill on the 1–2 most active repositories for a full release cycle to identify edge cases.
2. **Standardize Configuration:** Package the skill into a reusable GitHub Action so repository owners can enable it via a simple `.yml` workflow file.
3. **Dynamic Path Mapping:** Ensure the script dynamically locates `.properties` and `swagger.json` files regardless of individual repository folder structures.
4. **Internal Evangelism:** Present pilot metrics at engineering all-hands meetings to drive opt-in across teams.