---
title: "Platform support automation"
date: 2026-02-27
description: "How I engineered a single-source framework to reduce maintenance overhead and accelerate release cycles."
ShowToc: true
---

## At a glance
| Metric | Legacy Process | Optimized Workflow | Impact |
| :--- | :--- | :--- | :--- |
| **Turnaround time** | 24–48 hours | **< 2 hours** | **90% reduction** |
| **Touchpoints** | 5+ Version maps | **1 Master list** | **Single source** |
| **Consistency** | High risk of drift | **100% alignment** | **Built-in QA** |
| **Staff allocation** | Rote data entry | **Strategic focus** | **High ROI** |

---

## The challenge: High-velocity compliance
For enterprise security products like **Symantec Data Loss Prevention (DLP)**, documenting support for new browsers and operating systems (macOS, Windows, Chrome) is a mission-critical compliance requirement.

The legacy process required writers to manually update multiple version-specific help maps and PDF sources for every minor update. This "copy-paste" tax created:
* **SLA pressure:** Support statements must be live within 24–48 hours of a third-party release.
* **Maintenance debt:** Managing five active product versions consumed excessive cycles.
* **Version drift:** Manual updates increased the risk of inconsistency between Web Help and PDF deliverables.

## The solution: Single source of truth (SSOT)
I re-engineered the content architecture to leverage a **Write Once, Publish Everywhere** model. By unifying the data layer, I transformed a multi-day manual effort into a streamlined, one-hour execution.

### Implementation: The engineered workflow
I unified the technical infrastructure to create a single entry point for all platform support data:

1.  **Centralized master list:** Established a **Supported Versions Master List (SVL)** as the definitive data source for all versions.
2.  **Optimized Conref logic:** Unified third-party support topics using DITA Content References (Conref). Updating a single parent topic now automatically propagates changes across the entire documentation ecosystem (versions 15.8–16.1+).
3.  **Dynamic metadata:** Automated the "Last Published" logic within PDF maps using `<vrm>` tags. This ensures deliverable accuracy without manual text manipulation.

## The strategic impact: Operational velocity
By automating the most repetitive 20% of the workload, I enabled the team to refocus on high-value developer experience (DX) and security framework documentation.

* **Speed:** Reduced the end-to-end update cycle from several days to **under 2 hours**.
* **Reliability:** Guaranteed 100% alignment between PDF and Web Help by eliminating manual data duplication.
* **Scalability:** Created a repeatable framework that handles high-frequency browser releases without increasing headcount or writer fatigue.

## Technical stack
* **Content engineering:** DITA XML, Content Referencing (Conref), advanced help maps.
* **Infrastructure:** Adobe Experience Manager (AEM) / XML Documentation for Adobe.
* **Automation:** `<vrm>` tag metadata automation, Jira-driven SLA tracking.
* **Governance:** Automated production reviews and centralized taxonomy management.