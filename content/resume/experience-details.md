---
title: "Detailed Experience and Feature Inventory"
description: "Supporting detail for Joe McDermott’s resume, including responsibilities, technical tools, and the complete release inventory."
showToc: true
TocOpen: true
UseHugoToc: true
hideMeta: true
---

[Back to the resume]({{< ref "/resume/_index.md" >}})

**Senior Principal Information Developer, Lead**

Berkeley, CA · [LinkedIn](https://linkedin.com/in/joe-b-mcdermott) · [Email](mailto:mcd.joe@icloud.com)

## Professional summary

Technical documentation leader with experience spanning enterprise security, developer platforms, and structured content systems. I translate complex architecture into usable guidance, connect legacy systems with modern workflows, and lead documentation from feature planning through delivery.

Led in-depth documentation planning for product features across **15+ Symantec/Broadcom Data Loss Prevention releases over 12+ years**, defining content scope, identifying customer use cases, and coordinating delivery with engineering and product teams. My experience spans n-tier architectures and cloud environments, including SOAP-to-REST modernization, PKI and TLS infrastructure, FIPS 140-3 compliance, high availability and disaster recovery, multi-platform agents, and emerging AI integrations.

## Core competencies

* **Content architecture:** DITA XML, Markdown, docs-as-code, single-sourcing, conrefs, conditional logic, content governance, and CMS evaluation and migration (AEM and Vasont).
* **API and security documentation:** REST/OpenAPI, Swagger, API/SDK documentation, PKI, SSL/TLS, asymmetric cryptography, Kerberos, FIPS 140-3, and secure Syslog over TCP/TLS.
* **AI content operations:** Agent design and systematization, prompt engineering, LLM-assisted technical editing, repository documentation pipelines, automated style enforcement, staged feature descriptions, and structured JSON output for CI/CD workflows.
* **Team leadership:** Project load balancing, mentoring, research and training in new technologies, and routing priority requests to the appropriate team members.
* **Leadership and strategy:** PI planning, feature use-case discovery, SME coordination, Content Council leadership, and critical customer communications.

## Professional experience

### Broadcom

**2019–Present**

**Current role: Senior Principal Information Developer, Lead**

#### Documentation strategy and leadership

* Author or direct content specifications across enterprise DLP product areas, partnering with architects, engineering, SQA, product management, and field stakeholders.
* Lead the writing team through post-acquisition headcount reduction, coordinate PI planning, and manage SME participation and content governance through Content Council leadership.
* Extract underlying feature use cases during PI planning to explain customer solutions alongside interface procedures.
* Deliver late-breaking communications and critical advisories—approximately three per month in the supplied career inventory. The inventory associates this work with approximately $1M per quarter in renewals; that figure describes the renewal context, rather than revenue attributable solely to documentation.
* Mentor writers, lead Agile planning, and consult on global CMS migration and single-source publishing strategies.

#### API modernization

* Lead the transition from legacy SOAP documentation to REST/OpenAPI, providing tested request/response examples and a versioned API reference.

#### Security and platform documentation

* Document certificate infrastructure, Oracle-to-Enforce TLS, Kerberos authentication, HSM root-key isolation, CyberArk credential integration, and FIPS 140-3 cryptographic changes.
* Develop installation, upgrade, high availability, and disaster recovery guidance across server, database, and endpoint environments.
* Cover Windows, macOS, Linux, Ubuntu, and architecture-specific Arm64 and Intel deployments, alongside cloud integrations and policy-as-code APIs.

#### Content systems and AI-assisted operations

* Build documentation workflows using ChatGPT, Claude, and Gemini for research, source analysis, drafting, auditing, and editorial review.
* Audit **3,000+ legacy topics** using LLM-assisted workflows to identify stale content, duplication, and terminology inconsistencies.
* Design agents for style-guide enforcement, staged feature descriptions, and structured output integrated with repository and CI/CD workflows.
* Apply LLM-assisted technical editing with a **reported approximate 25%–42% reduction in time to publish** in the supplied inventory. The baseline, project-specific scope, and measurement period are not provided, so this remains an estimate rather than a verified cross-project result.
* Restructure installation, upgrade, and database documentation from **342 source topics into 58 head topics**, approximately **83% fewer topics**. This measures consolidation; customer task-time and support outcomes require separate measurement.
* Implement DITA reuse and conditional logic for concurrent releases, automate platform-support updates, and develop a Python utility for attribution consolidation and formatting.
* Maintain shared terminology and editorial standards through automated review templates.

### Symantec

**2012–2019**

**Final role: Senior Principal Information Developer**

* Planned and delivered enterprise Data Loss Prevention documentation for n-tier deployments, working with engineering and SQA to define feature scope, prerequisites, and customer workflows.
* Documented cloud DLP capabilities in CloudSOC, including policy management, Described Content Matching, and incident remediation, alongside cloud-save monitoring for OneDrive and SharePoint.
* Developed endpoint guidance covering macOS and Windows monitoring, Citrix virtual desktops, device control, tamper protection, file restoration, and cloud synchronization applications.
* Documented security and identity features including Azure/AD RMS decryption, PGP encryption response rules, SAML authentication, agent private-key protection, and Oracle-to-Enforce TLS configuration.
* Created installation and administration content for Oracle database environments, componentized MSI/RPM installers, combined agent packages, server sizing, and deployment through SCCM, YUM, and Group Policy.
* Covered REST-based cloud connectors, file-system discovery, SharePoint authentication and quarantine, information-centric tagging, and healthcare policy templates and data identifiers.
* Established shared terminology through the DLP dictionary and used structured authoring and single-source content practices to maintain consistency across product documentation.

### Corptax Inc.

**Senior Technical Writer | 2006–2012**

* Built the company’s first single-source help systems using MadCap Flare.
* Established a company-wide style guide and terminology standards to unify product voice.

### Deloitte & Touche Tax Technologies

**Technical Writer | 2004–2006**

* Developed client-facing help and feature documentation for international tax software.
* Used functional specifications and SME interviews to plan and deliver structured content across multi-month release cycles.

## Teaching experience

### California Polytechnic State University (Cal Poly)

**English Instructor | 2009–2012**

* Taught Technical Writing for Engineers (ENGL 149), connecting engineering concepts with clear communication for readers.

### Mills College

**English Instructor | 2006–2008**

* Taught Writing: Exposition (ENGL 1A), developing students’ expository writing and critical thinking skills.

## Technical toolkit

| Area | Technologies and methods |
| :--- | :--- |
| API and developer experience | REST, SOAP, OpenAPI/Swagger, SDK documentation, Postman, JSON, YAML, Git/GitHub, CI/CD |
| Content systems | DITA XML, conrefs, conditional publishing, Markdown, AEM, Vasont, MadCap Flare, Oxygen XML Editor |
| Security and identity | PKI, SSL/TLS, asymmetric cryptography, FIPS 140-3, Kerberos, SAML, OAuth 2.0/OIDC, HSMs, CyberArk, secure Syslog |
| Platforms and infrastructure | Enterprise DLP, SaaS, Oracle, Windows, macOS, Linux, Ubuntu, Arm64, high availability, disaster recovery |
| Automation and AI | Python, prompt engineering, custom agents, LLM auditing and editing, automated style enforcement, JSON-based pipeline integration |

## Release and feature documentation inventory

The following inventory summarizes authored or directed content specifications. Entries are organized by product version and describe documentation scope and the capabilities covered.

### CloudSOC

**Documentation scope:** On-prem-style DLP policies, Described Content Matching, incident management in CloudSOC console.

**Customer capability:** Manage DLP policies, detection, and remediation directly in CloudSOC without Global Detector.

### DLP 14.6

**Documentation scope:** RMS Decryption (Azure/AD RMS), Citrix XenDesktop/XenApp monitoring, Mac file restoration, printer exclusion filters, Mac Outlook 2016, Dynamic Image Extractor, HTTPS Proxy redirect, AcroForms support, Microsoft Edge browser integration, SIP-protected app monitoring.

**Customer capability:** Extends endpoint, virtual desktop, and cryptographic inspection coverage across macOS and Windows with high-fidelity parity.

### DLP 15.0

**Documentation scope:** Oracle 12c SE2 R2 / Standard, Update Readiness Tool (URT), Windows Device Control, macOS/Windows tamper protection, location-based agent monitoring, agent private key password security, Endpoint Discover incremental scanning, ICE (PGP) encryption response rules, Directory Group Matching on Mac, Office cloud saves (OneDrive/SharePoint), Cloud Service Connector REST API 2.0, international Data Identifiers (22 new DIs), claims/forms-based SharePoint auth, Grid Scanning for File Systems, single-pass DI engine, DLP virtual/hardware appliances, SAML authentication, keyword proximity/case sensitivity.

**Customer capability:** Comprehensive modernization of enterprise detection, cloud-save monitoring, cryptographic response rules, and multi-tier scalable discovery.

### DLP 15.1

**Documentation scope:** Componentized MSI/RPM installers, single package installer (Agent + ICT + ICE), Oracle-to-Enforce TLS communication (orapki), endpoint block-notification content variables, Enforce Server Sizing guidelines, OOTB SharePoint quarantine, Information Centric Tagging (ICT) taxonomy import, ICE cloud app support, Incident Deletion Flagging, service name changes (`Vontu*` → `SymantecDLP*`), Medicare/Medicaid policy templates and DIs.

**Customer capability:** Standardized deployment via standard admin tools (SCCM/YUM/GPO), enhanced branding clarity, and out-of-the-box healthcare regulatory compliance.

### DLP 15.5

**Documentation scope:** Shared authentication for ICE and DLP Agent (FEK tokens), Firefox URL content awareness on Mac, Endpoint Prevent for cloud sync apps (Box/Dropbox/iCloud/OneDrive) on macOS, real-time agent last-update timestamps, enhanced command-prompt monitoring.

**Customer capability:** Achieves complete macOS parity with Windows for cloud synchronization monitoring and local file-copy forensic visibility.

### DLP 15.7 / 15.8

**Documentation scope:** ServerJREMigrationUtility, AdoptOpenJDK 8 (OpenJRE) migration, Oracle 19c support, age-based incident filtering, TLS-over-TCP for syslog messages, separation of User Groups (Roles vs. Policies), Office 2019/365 cloud upload monitoring.

**Customer capability:** Eliminates Oracle Java dependency, ensures database lifecycle longevity, and secures external audit/syslog transmissions via TLS.

### DLP 16.0

**Documentation scope:** macOS endpoint installation restructuring, in-console News and Alerts feed, Linux Agent support (RHEL 7.9/8.x), Core Platform REST APIs, High Availability & Disaster Recovery guides, User Risk Integration (ICA), Universal Detection Server (UDS) installation, Struts/Spring MVC CSRF protection.

**Customer capability:** Extends agent footprint to Linux enterprise environments, publishes official HA/DR blueprints, and embeds user-risk scoring into core detection logic.

### DLP 16.0 RU (16.0.1)

**Documentation scope:** Ubuntu 20.04/22.04 LTS Agent support, Audit Log Reporting REST API, Audit Logs console viewer, non-BMP Unicode character handling, Chrome Content Analysis Connector Agent SDK, User Cancel response rule on Mac, Network Discover Telemetry.

**Customer capability:** Broadens Linux distribution support, enables SIEM audit log integration, and provides extension-free browser monitoring via Chrome Content Analysis SDK.

### DLP 16.0 RU2 (16.0.2)

**Documentation scope:** System Limits Guide, Kerberos API portal auth, RHEL 9 support, Safari 17 monitoring, TLS database upgrade bypass, column preferences for saved reports, ServiceNow End User Remediation message body integration, Microsoft Entra ID joined endpoint support, Incident Snapshot EAP readiness.

**Customer capability:** Streamlines cloud-joined endpoint governance, enhances reporting persistence, and introduces deep ServiceNow remediation workflows.

### DLP 16.1

**Documentation scope:** API content versioning via git commit hashes, Core UDS, Bouncy Castle FIPS library replacement (FIPS 140-3 compliance), core traffic/policy/server APIs, Enforce Server install with TLS over Oracle, MIP-encrypted content decryption in incident snapshots, High-Speed Discovery (HSD) SharePoint and file system scanning/remediation, policy-as-code via JSON import/export APIs.

**Customer capability:** Delivers FIPS 140-3 cryptographic compliance, native MIP content inspection in snapshots, and automated policy-as-code management.

### DLP 25.1 / 16.1

**Documentation scope:** JackieChan/Core APIs, Granular RBAC (restricted server-admin privileges, API-only accounts), Enforce Server Live Backup (Disaster Recovery), Detection Server Service Management ("Recycle" control), Kerberos for Oracle/Enforce connection, Thales Luna Network HSM integration for root keys, CyberArk PAM credential integration, Content Root Enumeration for HSD, Discover cluster DR tools, EDM indexing improvements, extended DGM for hybrid Entra ID, SMB3 pull logs for Discover.

**Customer capability:** Elevates enterprise security with HSM root key isolation, CyberArk credential rotation, automated live backups, and petabyte-scale HSD cluster discovery.

### DLP 26.1

**Documentation scope:** DB/Install/Upgrade IA restructuring (342 → 58 topics), Multi-role SAML support, Microsoft 365 Copilot Securelet, Spring 6 / OpenSAML 4 migration, bulk agent management REST APIs, single-session login enforcement, global app monitoring cleanup (Teams, Zoom, Slack, ChatGPT), OAuth 2.0 / OIDC token-based API auth, modernized log collection UI, native Microsoft Entra ID directory integration and user attribute agent groups, architecture-specific macOS installers (Arm64 & Intel x86_64), Discover ART and Inventory scanning, OOTB smart response rules replacing legacy Java Flex plugins.

**Customer capability:** Covers Spring 6 architecture modernization, Microsoft 365 Copilot monitoring, and architecture-specific macOS installers for Apple Silicon and Intel systems.

## Selected work

* [API modernization]({{< ref "/portfolio/api-transition.md" >}})
* [Installation journey redesign]({{< ref "/case-studies/install-content-refactor.md" >}})
* [AI-assisted content engineering]({{< ref "/case-studies/ai-workflow.md" >}})
* [Attribution automation]({{< ref "/portfolio/attribution-automation.md" >}})
* [342 topics to 58: IA restructuring]({{< ref "/posts/342-topics-to-58-ia-restructuring.md" >}})

## Education

* **M.A., English** — Mills College
* **B.A., English/Technical Communication** — Cal Poly
