---
title: "API modernization and developer delight"
description: "Leading the architectural shift from SOAP to REST/OpenAPI through custom infrastructure and CMS decoupling."
date: 2026-02-17
ShowToc: true
---

## Project scope
| Metric | Status | Impact |
| :--- | :--- | :--- |
| **Architecture** | SOAP to REST/OpenAPI | Modernized |
| **Content Model** | CMS Decoupling | Docs-as-Code |
| **Onboarding** | 50% faster | Verified |
| **Maintenance** | Multi-version support | Automated |

---

## The engineering challenge: Decoupling legacy technology
To support modern developer requirements, the Symantec DLP suite needed to transition from legacy SOAP to REST/OpenAPI architectures. However, the existing documentation was locked in a monolithic DITA CMS. This architecture prevented the high-velocity updates and multi-version support required by enterprise API consumers.

## Project execution: Architectural shift
I acted as a **Content Engineer** to lead the structural shift required for a modern developer experience (DX).

### 1. DITA decoupling and Docs-as-Code
I orchestrated the extraction of API content from the legacy CMS. By moving API documentation into a **Docs-as-Code framework**, I integrated it directly into the standard developer CI/CD pipeline. This eliminated the lag between code commits and documentation updates.

### 2. Multi-version framework engineering
I modified the API portal’s underlying codebase to support concurrent versioning. This allowed users to toggle between multiple API and product versions—a critical requirement for enterprise customers who maintain legacy and current installations simultaneously.

### 3. Environment synthesis and validation
I built a dedicated testing environment to validate every endpoint. By generating real-world request/response pairs from live environments, I ensured 100% technical accuracy for the OpenAPI specifications and eliminated "documentation drift."

### 4. Interactive OpenAPI migration
I transitioned the reference library from static tables to interactive Swagger/OpenAPI. I specifically optimized the design for **"time-to-first-call,"** allowing developers to test authentication and endpoints directly within the portal.

## Technical outcomes
* **Architectural agility:** Decoupled content from the CCMS, allowing documentation to scale at the speed of engineering releases.
* **Improved developer adoption:** Boosted onboarding efficiency by **50%** through validated examples and an intuitive version-switching UI.
* **Reduced engineering tax:** Established a self-service reference framework that eliminated manual specification hand-offs and repetitive support queries.
* **Repeatable blueprint:** Created a standardized migration framework for future API releases across the product portfolio.

## Technical stack
* **API Standards:** REST, OpenAPI (Swagger), SOAP.
* **Infrastructure:** CI/CD pipelines, Git, Custom portal engineering.
* **Content Source:** DITA XML (extraction), Markdown, YAML.
* **Validation:** Postman, environment-based endpoint testing.