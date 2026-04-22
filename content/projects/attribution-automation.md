---
title: "Automating open source attribution"
description: "Engineering a Python-based utility to streamline BlackDuck license merging and compliance formatting."
date: 2025-12-03
ShowToc: true
---

## Project scope
| Metric | Manual Process | Automated Workflow | Impact |
| :--- | :--- | :--- | :--- |
| **Merge time** | High (Multi-file) | **Seconds** | **Instant consolidation** |
| **Data integrity** | Risk of duplicates | **Alphabetical/Unique** | **100% accuracy** |
| **Compliance** | Manual header edits | **Auto-inserted** | **Policy alignment** |
| **Platform** | macOS / zsh | Python 3 | **Standardized** |

---

## The engineering challenge: Fragmented compliance data
For enterprise security products, merging third-party open source (OSS) attributions from multiple BlackDuck scans is a recurring manual bottleneck. The legacy process required technical writers to manually de-duplicate components and format license blocks to meet strict Broadcom publishing standards—a high-risk, low-value task.

## The solution: `join_components_licenses.py`
I engineered a Python utility to automate the consolidation of BlackDuck attribution files. The script transforms fragmented TXT data into a single, production-ready document.

### Key automated functions
* **De-duplication:** Automatically builds a unique components list, removing duplicates across input files.
* **Intelligent sorting:** Alphabetizes both components and license blocks for better readability.
* **License mapping:** Groups all components governed by a specific license under one heading, including the full original license text once.
* **Broadcom compliance:** Strips legacy headers and auto-inserts the standardized OSS disclaimer and title placeholders.

## Usage and execution
The script is designed for a **Docs-as-Code** workflow, running directly from the macOS Terminal (zsh).

### 1. Prerequisites
* Python 3 installed on macOS.
* BlackDuck attribution files located in a local directory.

### 2. Execution
```bash
# Navigate to the attribution directory
cd ".../third-party"

# Run the merge utility (example for DLP 25.1)
python3 merge_attributions.py \
  DLP_Agent_25.1.txt \
  DLP_Detection_25.1.txt \
  DLP_Servers_25.1.txt \
  > DLP_25.1_Attributions_merged.txt