---
title: "342 Topics to 58: What AI-Assisted IA Restructuring Took"
date: 2026-09-16
description: "A real-world case study on using AI to condense 342 legacy technical documentation topics down to 58 Head Topics while cutting page count by 83%."
tags: ["Information Architecture", "AI", "DITA", "Docs-as-Code"]
showToc: true
draft: false
---

I recently ran an AI-assisted documentation restructuring project, and I want to capture the lessons while they’re fresh—the wins, the rough edges, and the technical debt left to fix by hand.

The target docs were install, upgrade, and Oracle 19c database guides for Symantec DLP. All three started life as standalone PDFs—a system requirements guide, a database implementation guide, and an installation guide—each written for linear reading. Today, they live in a single HTML help system. Nobody reads a help system start to finish; users search for specific tasks. The legacy micro-topic structure—spreading short steps across hundreds of pages—actively degraded the user experience. Completing a task as simple as "install a detection server" required stitching together content across 5 to 17 separate topics.

The solution was a **Head Topic** model: one comprehensive topic per core task, answering six fixed questions in a strict sequence: benefits, prerequisites, procedure, verification, best practices, and troubleshooting. Instead of hopping across single-step pages, users land on one page with everything they need.

## The process

I broke the refactor into four phases and ran most of them through Claude:

1. **Deep-Dive Analysis:** Analyzed existing topics across all three guides to surface structural flaws—OS duplication, empty "router" topics, single-step micro-topics, cross-guide redundancies, and data-quality defects.
2. **Head Topic Architecture:** Mapped source topics to target merges for each guide, defining exclusions and sequence. This required human judgment—especially OS variants. Where Windows and Linux differed by a command or two, I used conditional logic within a single topic; where workflows diverged completely, I split them into separate topics.
3. **Drafting & Verification:** Once outlines were approved, Claude drafted each Head Topic and executed an independent validation pass, checking drafts against source content to prevent dropped information.
4. **Mapping & Documentation:** Generated navigable maps for each guide and authored a formal content specification.

## The numbers

The real story isn't just page counts—it's velocity. This run condensed months of IA analysis, refactoring, and hand-coded DITA work into a few days. 

That said, the page-count reduction demonstrates the scale of legacy bloat:

| Guide | Old Topics | New Head Topics | Reduction |
|---|---|---|---|
| Oracle 19c DB | 70 | 11 | 84.3% |
| DLP Install | 151 | 28 | 81.5% |
| DLP Upgrade | 121 | 19 | 84.3% |
| **Total** | **342** | **58** | **83.0%** |

This wasn't content removal—it was consolidation. No procedural details were lost. Eliminating router topics, empty "About" wrappers, and single-line orientation topics (artifacts of PDF heading hierarchies) drove the 83% drop.

The primary gain wasn't the reduced page count; it was compressing a quarter's worth of IA refactoring into days.

## What worked

* **Consistent IA Application:** The six-question structure was applied universally across all topics, improving readability, placing prerequisites upfront, and standardizing verification and troubleshooting.
* **Alignment with Support Runbooks:** The output mirrors Support's field-tested Quick Install/Upgrade Guides—the unofficial runbooks created because canonical docs were too unwieldy—while retaining the complete technical specificity required for production deployments.
* **Repeatable Skill Architecture:** The four-phase method was converted into four reusable AI skills.

This process scale matters. The PDF-to-HTML transition created similar technical debt across multiple product lines. Ten other writers on my team manage legacy docs that suffer from the same fragmentation. If this workflow holds on its next run, it scales from a personal time-saver to an organizational force multiplier, eliminating months of manual refactoring across team backlogs.

## What's still rough

* **Schema Validation Failures:** The drafting skill initially failed to enforce DITA-OT constraints. Output contained structural schema violations, such as disallowed section nesting and invalid element ordering. I have since updated the skill to validate directly against the DITA-OT toolchain, though this requires validation in the next run.
* **Lack of Visuals:** No process-flow diagrams or visual architecture maps were generated because they were not explicitly prompted in the skill definition.
* **Inconsistent Drafting Quality:** Output quality varied across guides. The Upgrade guide drafted cleanly, while the DB and Install guides required heavier manual editing. 
* **Broken Topic References:** Duplicate references (e.g., topics linked in both guide-specific maps and the global help map) broke during restructuring.
* **Grammatical Artifacts:** Occasional awkward phrasing appeared (e.g., *"Verify that operates correctly by performing checks on..."*), requiring manual prose polish.
* **Loss of Technical Nuance:** Information density caused logic errors in edge cases. For instance, one draft framed updating detection servers or clusters as a mutually exclusive choice, whereas enterprise deployments frequently run both concurrently.

Line-level polish and technical verification will be handled during editorial review.

## Measuring impact: The next step

Topic reduction and time saved are internal velocity metrics—they do not prove improved user experience.

To evaluate customer outcomes, I am implementing a Goal-Question-Metric (GQM) framework:
* **Goal:** Reduce effort and completion time for DLP administration tasks.
* **Questions:** Are task-related support tickets decreasing? Are users visiting fewer pages per workflow? Is time-on-task decreasing?
* **Metrics:** Define specific analytics and support tracking mechanisms based on these targets.

Building a structured measurement framework prevents relying on vanity metrics.

## Conclusion

AI-assisted restructuring does not replace authorial judgment. It automates high-overhead, repetitive refactoring—reducing months of manual topic-shuffling to a few days of automated execution and focused human review. The remaining 20% of the work requires subject-matter expertise: validating logic, refining edge cases, and verifying clarity.

Next steps: test the updated DITA-OT validation pipeline on a second project, and deploy the GQM framework to measure real-world performance.