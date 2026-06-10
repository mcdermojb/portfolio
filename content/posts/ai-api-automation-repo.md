---
title: "Automating Our API Documentation Pipeline"
date: 2026-06-10
draft: false
---
### Automating Our API Documentation Pipeline

Every time a developer submitted a Git Pull Request (PR) containing API validation messages or Swagger documentation, it included roughly 70 to 100 strings. Reviewing these manually was a massive time sink, taking about an hour per PR. In the vast majority of cases, these strings required tedious style updates. In a smaller minority of cases, they required deep-dive edits to clarify feature details, correct terminology, or address bespoke issues that required pulling API code into a client to test the result. 

Initially, I handled this entirely without AI. To reclaim my time, I built a custom Gemini Gem to automate the initial review. While the Gem saved hours of analytical work, it introduced a new mechanical bottleneck: I had to manually copy the strings from the Git PR, paste them into the Google Gemini chat window, review the output, and painstakingly transcribe the changes back into the PR. These multiple manual steps were inefficient and introduced the possibility of human error. 

Concurrently, our development team was championing new AI automation initiatives. Recognizing the opportunity, I piggybacked on their momentum. I took the Gem I had created and partnered with the Dev team, who helped me integrate it directly into their skills automation pipeline. 

Here is a high-level overview of how we developed and implemented this automation:

1. **Auditing the Effort:** Identifying the manual review bottleneck and quantifying its time cost (an hour per 70-100 strings) to complete.
2. **Building the Prototype:** Creating a custom Gemini Gem to evaluate strings against internal style guides.
3. **Identifying the Friction:** Recognizing the copy/paste transcription bottleneck between the browser-based Gem and our Git PRs.
4. **Automating the Pipeline:** Partnering with Dev to integrate the Gem directly into their automated skills pipeline, eliminating manual touchpoints.
5. **Enforcing the Rules:** Establishing a robust style hierarchy to ensure the AI acts as an authoritative, consistent gatekeeper.
6. **Refining the Output:** Building a continuous feedback loop to calibrate the AI against "gold standard" files.

Here is how we built a system that solves the the initial cycles and human error problem.

**Identifying the Manual Bottleneck**
Every pull request containing REST API validation messages and Swagger documentation properties required a manual review for clarity, tone, and grammar. Reviewers (that would be me) had to painstakingly check for proper capitalization, verb tense, and phrasing, which was repetitive and unscalable. I recognized the need to build an automated process so our team could stop relying on manual review steps and focus on higher impact work that benefited users.

**Integrating AI Where It Actually Helps**
We developed an AI-powered "Doc review skill" to serve as an "Expert API Technical Editor and Content Reviewer." Instead of throwing human bodies at the problem, we fed the AI our raw API properties files and instructed it to generate a comprehensive Swagger Documentation Review report. The AI systematically evaluates the input strings, identifies rules violated, and provides revised values directly within the pipeline. 

**Establishing a Ruthless Style Hierarchy**
To prevent the AI from making subjective or conflicting decisions, we established a strict set of transformation rules and a clear style guide hierarchy.
* **Primary Source:** The Microsoft Manual of Style (MMS) serves as the primary authority. This primary guide governs active voice, American English spelling, second-person pronouns, and jargon avoidance.
* **Secondary Source:** The internal style guide serves as the secondary fallback. This secondary guide is used for specific capitalization rules, such as treating `.summary` strings as Title Case section headings.

The AI applies these rules systematically, automatically converting informal jargon like "One of:" to "Valid values are," and shifting passive constructions to active present tense.

**Building a Continuous Feedback Loop**
This wasn't a one-time project. We continuously tested the AI against different pull requests and refined our prompts based on the output to eliminate errors. When we realized the AI was struggling with Title Case versus sentence case for different property keys, we explicitly updated the prompt instructions to identify `.summary` strings as section titles. We also calibrated the AI against an `auditlogs.json` "gold standard" to ensure product consistency, successfully training it to enforce that all DTO field descriptions open with the definite article "The."

**Removing the Possibility for Human Error**
By iterating on the prompt, strictly enforcing our style hierarchy, and integrating directly into the dev pipeline, the automated doc review skill now produces highly accurate string updates. When a developer submits an API pull request, the AI automatically performs the review before a human ever sees it. It catches missing relative pronouns, sentence fragments, and first-person pronouns immediately. I can then perform my review while focusing on how the new or updated API affects user's workflow.

***

### Next Steps: Proving the Metrics and Scaling

Because this pipeline enhancement has not yet been stress-tested in a normal, high-volume development cycle, our next phase requires capturing hard metrics and formulating a cross-repository rollout plan. 

**How to Confirm Metrics and Velocity Improvements:**
To quantify how this diminishes manual work, we can track the following data points during our initial pilot sprints:
* **PR Cycle Time:** Measure the average time from PR creation to PR merge for API-related updates before the automation vs. after. 
* **Review Time Saved:** Log the number of PRs containing API strings per sprint. Multiply that by the baseline (1 hour per PR) to report the exact number of manual engineering/editing hours saved per sprint.
* **Comment Reduction:** Count the average number of documentation-related review comments on PRs. A successful automation should drive this number close to zero, proving that the AI is catching style issues before human review.

**Process for Implementing Across All Dev Repos:**
To scale this across the entire engineering organization, we should avoid a "big bang" release and instead focus on standardized integration:
1. **Pilot Program:** Run the automation on the 1-2 most active repositories for a full release cycle to catch edge cases.
2. **Standardize Configuration:** Create a standardized GitHub Action (or equivalent CI/CD step) that houses the skill. This allows any repo owner to simply drop a `.yml` configuration file into their repository to inherit the automation.
3. **Path Mapping:** Ensure the script is built to dynamically locate `.properties` or `swagger.json` files, regardless of the specific repository's folder structure, to minimize custom setup for dev teams. 
4. **Internal Evangelism:** Present the time-saved metrics from the pilot program at a centralized engineering all-hands to drive opt-in from other repository owners.