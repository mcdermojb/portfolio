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

## Deliverables and current status

**In progress: validation, dependency mapping, and DITA prototyping.**

* Clean-room installation testing to identify gaps between product behavior and documented steps.
* A unified installation content model with dependencies across networking, security, and database teams.
* A published [Kerberos configuration guide](https://techdocs.broadcom.com/us/en/symantec-security-software/information-security/data-loss-prevention/25-1/install-dlp/configuring-certificates-for-secure-server-communications/using-kerberos-enforce-server-and-the-database/enable-kerberos-authentication-new-installations.html).

The project aims to reduce setup effort and support requests. Customer task-time and support-volume outcomes have not yet been measured.

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
