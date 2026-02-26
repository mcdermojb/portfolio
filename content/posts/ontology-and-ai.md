---
title: "From Vending Machines to Interrogation: Drafting a Recursive Learning Framework"
date: 2026-02-26
description: "Ruminations on transitioning from 'one-shot' prompting to a recursive, interrogative methodology in technical communication."
tags: ["AI", "Information Architecture", "Docs-as-Code", "Ruminations"]
---

I’m spending a lot of time lately thinking about the "vending machine" problem in AI. Most people treat LLMs like a snack machine: you put in a prompt, you get a result, and you walk away. But for technical communication—especially when we’re dealing with high-stakes architectural documentation—that "one-shot" model is increasingly insufficient.

I’m currently exploring a more recursive, interrogative framework. Here is how I'm mapping the traditional Technical Communication lifecycle to this new AI-augmented reality.

## 1. The Paradigm Shift: Interrogation over Prompting

I'm moving away from "Prompt Engineering" entirely. It implies there is a "perfect" sequence of words that unlocks the answer. Instead, I’ve been treating the AI as a dynamic, slightly unreliable agent that needs to be cross-examined.

The goal isn't just to get the output; it's to investigate the model’s logic until I’m certain the technical understanding is sound.

* **The Static Model:** $Input \rightarrow Final Output$
* **The Interrogative Model:** $Input \rightarrow Analysis \rightarrow Iterative Questioning \rightarrow Validated Output$

## 2. Mapping the Tech Comm Lifecycle

I’m currently ruminating on how the interrogative approach changes our standard milestones. It’s not about replacing these steps, but about using AI to "pressure-test" them at every turn.

| Phase | Traditional Workflow | Interrogative AI Workflow |
| :--- | :--- | :--- |
| **Scoping** | Manual gap analysis of existing docs vs. new features. | **Gap Interrogation:** I feed the AI the new PRD and the current Table of Contents. I ask it to find "the information vacuum"—the logical gaps where a user will get stuck between versions. |
| **Assessing Specs** | Interviewing SMEs and reading "messy" engineering Jira tickets. | **Entity Extraction:** Using AI to "de-noise" engineering brain-dumps. I ask: *"Based on this raw Jira thread, what are the mandatory parameters vs. the optional edge cases?"* |
| **Drafting Content** | Blank-page drafting based on notes. | **Architectural Drafting:** I don't ask it to "write." I ask it to "structure." I provide the logic and ask it to suggest the most efficient Markdown/DITA hierarchy for the task. |
| **Technical Review** | Sending a draft to an SME and waiting for feedback. | **Pre-SME Auditing:** I have the AI play the "Skeptic." I tell it: *"Act as a Senior Architect. Find three things in this draft that are technically ambiguous or likely to cause a support ticket."* |
| **Production Pipelines** | Manual formatting, YAML checks, and Git pushes. | **Linter Augmentation:** Using AI scripts to validate front-matter consistency and broken link checks within the Docs-as-Code (Hugo/Git) pipeline. |

## 3. Using AI as a Learning Interface

What if we used AI not to *write* the docs, but to *interrogate* the codebase? I’m playing with "Logic Auditing" to see how it accelerates the "Zero-to-One" learning phase. 

When a model generates a CLI example or an API call, I require it to explain the specific decision-making process or design patterns used. If it can't justify the architecture, the solution is discarded. We have to treat the AI as a junior engineer whose work must be defended before it is merged.

## 4. Navigating Tool Volatility (The "Agnostic" Stance)

The ecosystem is moving so fast that "tool mastery" is a trap. I’m leaning toward a **Tool-Agnostic** stance. If your workflow depends on one specific version of one specific agent, your process has a single point of failure.

I’m currently evaluating tools based on **Output Decay**. I’ve noticed that as models update, they often "drift" or lose their edge in specific technical niches. My current rule of thumb: If the performance degrades, pivot immediately. Maintain redundancy. Always have a "Plan B" general-purpose LLM in the wings.

---

### Closing Thoughts (For Now)

We need to prioritize **Process over Prompt**. Mastering a specific syntax is ephemeral; mastering the ability to *learn how to learn* from these tools is the real long-term value. 

In this framework, the technical writer becomes less of a "content generator" and more of an **Information Auditor.** We are the bridge that ensures the AI’s output actually maps to reality.

*This is a living document. As the models evolve, so will this framework.*