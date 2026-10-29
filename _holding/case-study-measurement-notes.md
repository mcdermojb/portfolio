# Case study claims awaiting measurement context

These claims were removed from the public case studies pending baseline, timeframe, sample, and attribution details.

## ai-workflow

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

## At a glance
| Metric | Result | Status |
| :--- | :--- | :--- |
| **Creation and review time** | Reported ~40% reduction | Measurement details pending |
| **Audit Scale** | 3,000+ legacy topics | Completed |
| **Workflow** | Recursive prompting | Standardized |
| **API Velocity** | Automated draft generation | Deployed |

---

The previously published 30% cycle-time claim and this approximately 40% creation-and-review claim do not have documented, comparable scopes. They should not be treated as the same measurement or as a verified range.

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

* **Efficiency:** Reported an approximately **40% reduction** in creation and review time. The baseline, sample size, and measurement period are not documented here.
* **Modernization:** Completed audits of massive legacy repositories in days rather than months.
* **Accuracy:** Improved the technical depth of documentation by using recursive prompting to catch edge cases in engineering specs.

## Technical stack
* **AI & LLMs:** Custom prompt engineering, recursive learning frameworks.
* **Developer tools:** Swagger/OpenAPI, Git, Python-based automation.
* **Content standards:** Microsoft Manual of Style, DITA XML, Markdown.

---

### Strategic insight: The recursive prompt methodology
The core of this success was moving away from "one-shot" prompting. I documented and standardized a **recursive workflow** where the AI is tasked with finding inconsistencies within the PRD itself before a single word of documentation is written. This "pressure testing" phase surfaces questions for engineering review before publication.


## cms-migration

---
projectTitle: "CMS migration and structured authoring"
projectCategory: "Content systems"
projectSummary: "Evaluated AEM and Vasont workflows and standardized reusable DITA content for multi-release publishing."
weight: 2
title: "CMS migration and structured authoring"
description: "How I optimized enterprise publishing through DITA standardization and CCMS strategy."
summary: "Evaluated AEM and Vasont workflows and standardized DITA content reuse to support publishing and maintenance across multiple product releases."
date: 2026-02-17
ShowToc: true
---

## At a glance
| Metric | Result | Status |
| :--- | :--- | :--- |
| **Publishing time** | Reported 40% reduction | Measurement details pending |
| **Installation-related support calls** | Reported 90% reduction | Measurement and attribution details pending |
| **Delivery speed** | Reported 25% increase | Metric definition pending |
| **Architecture** | DITA XML / CCMS | Standardized |

---

## The challenge: Scaling for multi-release maintenance
Managing documentation for N-tier architectures requires a high-availability delivery pipeline. The legacy workflow could not scale with rapid release cycles, particularly when maintaining concurrent support for multiple enterprise versions.

## The solution: Systems implementation and DITA standardization
I led the transition to a modern structured authoring environment, focusing on content reuse and automated hand-offs between engineering and documentation.

### 1. Comparative analysis and selection
I conducted deep-dive workflow mapping and usability testing to evaluate **AEM (Adobe Experience Manager) vs. Vasont**. I aligned the final CCMS selection with global engineering requirements to ensure long-term scalability.

### 2. DITA optimization
I implemented strict DITA standards across diverse product lines. By enforcing granular content reuse, I eliminated redundant drafting and ensured that core technical specifications remained consistent across all deliverables.

### 3. Engineering integration
I integrated structured API models within **Git** to streamline the developer experience. This narrowed the gap between code commits and documentation updates, creating a more cohesive "Docs-as-Code" environment.

## The impact: Global alignment and speed
The migration transformed the documentation department from a bottleneck into a high-velocity delivery engine.

* **Operational efficiency:** Reported a **40% reduction in publishing time** and a **25% increase in delivery speed**. These are separate claims; their baselines and metric definitions are not documented here.
* **Support deflection:** Reported a **90% reduction in installation-related support calls** alongside content improvements. The reporting period, ticket counts, and contribution of the CMS migration versus installation guidance are not documented here.
* **Global scalability:** Unified the content strategy for complex, multi-tier enterprise environments, providing shared content structures for global teams.

## Technical stack
* **CCMS:** Adobe Experience Manager (AEM), Vasont.
* **Authoring:** DITA XML, Oxygen XML Editor.
* **Version control:** Git, GitHub.
* **Methodology:** Structured authoring, Information mapping.


## install-content-refactor

---
projectTitle: "Installation journey redesign"
projectCategory: "Information architecture"
projectSummary: "Reorganizing fragmented setup content using clean-room testing, dependency mapping, and a unified DITA model."
weight: 1
projectStatus: "In progress: validation and prototyping."
title: "Refactoring installation journeys"
description: "How I am re-engineering legacy installation content through architectural mapping and DITA optimization."
summary: "Redesigning fragmented setup guides into a unified installation journey, using clean-room testing and dependency mapping. In progress: validation and DITA prototyping."
date: 2026-02-27
ShowToc: true
---

## At a glance
| Metric | Target Goal | Status |
| :--- | :--- | :--- |
| **Install time** | Target: 30% reduction | Not yet measured |
| **Support Volume** | Deflect "Setup" Tickets | Mapping Deficiencies |
| **Content Model** | Unified DITA Journey | Prototyping |
| **Methodology** | Clean-room Validation | In Progress |

---

The 30% installation-time reduction is a project target. It is separate from the historical support-call reduction reported in the [CMS migration case study]({{< ref "/case-studies/cms-migration.md" >}}), whose measurement period and attribution still need clarification.

## The challenge: Fragmented information architecture
Legacy installation content suffered from outdated writing practices and a disjointed information architecture (IA). This fragmentation created significant friction for new users, leading to:

* **Information dispersion:** Critical data was scattered across disparate sections (e.g., System Requirements vs. Installation), forcing users to context-switch constantly.
* **Coordination overload:** The documentation failed to account for the complex hand-offs required between Networking, Security, and Infrastructure teams.
* **Parsing difficulty:** Long-form procedures lacked visual hierarchy, making it difficult for users to follow complex, multi-server setup steps.

## The solution: Architectural mapping and clean-room testing
I am currently leading a "top-down" refactor of the installation journey. Rather than performing simple edits, I am re-engineering the underlying content model based on real-world environment testing.

### 1. Clean-room validation
I am conducting "clean-room" installations—building the product from scratch in isolated environments—to identify "truth gaps" between the current documentation and the actual software behavior.

### 2. Structural prototyping
I am designing a new information model that moves away from siloed topics and toward a **unified installation journey**. This involves:
* Mapping inter-team dependencies (Networking/DBA/Security) directly into the procedural flow.
* Refactoring DITA XML structures to support a more linear, "Single-Path" onboarding experience.

### 3. Cross-functional alignment
I am collaborating with Engineering and Security architects to ensure the new content architecture accounts for varied organizational security protocols and environmental constraints. 

* **Live Implementation Artifact:** See my published guide for [Kerberos authentication for N-tier architectures](https://techdocs.broadcom.com/us/en/symantec-security-software/information-security/data-loss-prevention/25-1/install-dlp/configuring-certificates-for-secure-server-communications/using-kerberos-enforce-server-and-the-database/enable-kerberos-authentication-new-installations.html). The guide provides TGT configuration syntax for multi-server database environments; its effect on support volume has not been quantified here.

## Anticipated impact: Faster adoption and fewer tickets
By modernizing the installation corpus, we aim to achieve:

* **Faster time-to-value:** Reducing the clock-time from initial download to a functional production state.
* **Support deflection:** Eliminating high-volume, low-complexity support tickets related to environment provisioning and initial setup.
* **Content authority:** Increasing user reliance on official documentation over unofficial "cheat sheets" or back-channel support.

## Technical stack
* **Architecture:** DITA XML, Information Ontology mapping.
* **Delivery:** Static Site Generation (HTML), PDF.
* **Testing:** Clean-room environment provisioning, Virtual Machines.
* **Automation:** Python-based logic for data transformation (Exploratory phase).

---

*This project is currently in the **Validation and Mapping Phase**. Check back for updates on the final system architecture and deployment results.*

