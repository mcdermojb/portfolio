---
projectTitle: "AI-assisted content engineering"
projectCategory: "AI workflows"
projectSummary: "Built reusable prompts, API drafting templates, and auditing workflows for 3,000+ legacy topics."
weight: 3
title: "AI-augmented content engineering"
description: "Optimizing the documentation lifecycle through prompt engineering, LLM automation, and recursive learning."
summary: "Built AI-assisted workflows for specification research, API drafting, and audits of 3,000+ legacy topics, with technical review before publication."
date: 2026-02-17
ShowToc: true
---

## What I delivered

* Reusable prompts for researching engineering specifications and identifying unanswered questions.
* OpenAPI-based drafting templates grounded in specifications and environment metadata.
* An audit of **3,000+ legacy topics** for stale processes, duplication, and terminology issues.
* Style-review templates with a human technical review before publication.

## The challenge: High-velocity bottlenecks
In enterprise security environments, the Documentation Development Life Cycle (DDLC) often faces bottlenecks during the research and review phases. Manual research into complex PRDs and functional specifications creates "zero-to-one" friction, slowing down product releases.

## The solution: An AI-integrated pipeline
I engineered an AI-integrated pipeline that automates the rote phases of content development, allowing the team to focus on technical accuracy and architectural strategy.

### 1. Accelerated research and onboarding
I developed a library of "interrogative" prompts to ingest complex engineering specifications. This workflow identifies "information vacuums" in source material, accelerating the learning phase for new security features.

### 2. Automated API documentation
I created templates to ingest **Swagger/OpenAPI specifications**, generating technically grounded initial drafts directly from source code and environment metadata. These drafts are grounded in source specifications and require technical review before publication.

### 3. Scalable auditing and governance
I used LLM-based automation to perform large-scale audits that would be impossible manually:
* **Legacy cleanup:** Audited 3,000 legacy topics to identify stale process flows and redundant information.
* **Style enforcement:** Built prompt-based QA templates that apply the **Microsoft Manual of Style** and internal standards, reducing manual editorial cycles.

## The impact: Role transformation
By automating repetitive research, drafting, and review tasks, I transitioned the writing function from "draft generator" to **Subject Matter Expert (SME) and Information Auditor.**

* **Repeatable review:** Standardized research, drafting, and editorial checks so writers can reuse the workflow across projects.
* **Modernization:** Identified stale process flows and redundant information across the legacy topic set.
* **Accuracy:** Improved the technical depth of documentation by using recursive prompting to catch edge cases in engineering specs.

## Technical stack
* **AI & LLMs:** Custom prompt engineering, recursive learning frameworks.
* **Developer tools:** Swagger/OpenAPI, Git, Python-based automation.
* **Content standards:** Microsoft Manual of Style, DITA XML, Markdown.

---

### Strategic insight: The recursive prompt methodology
The core of this success was moving away from "one-shot" prompting. I documented and standardized a **recursive workflow** where the AI is tasked with finding inconsistencies within the PRD itself before a single word of documentation is written. This "pressure testing" phase surfaces questions for engineering review before publication.
