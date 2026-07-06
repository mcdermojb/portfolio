---
title: "The 'Ghost in the DOM': Why AI is the technical writer’s new best friend"
date: 2026-04-22
description: "A strategic look at how integrated LLMs like Gemini are transforming technical documentation from rote drafting to structural auditing."
categories: ["AI", "Content Engineering"]
tags: ["Gemini", "Technical Writing", "DOM", "Accessibility"]
draft: true
---

## The "zero-to-one" problem
Every technical writer knows the pain of learning a new, code-based tool. You’re looking at a brand-new UI that your manager directs you to adopt yesterday. Provided training is for a marketing audience, and you need to both use and document the tool (so your compatriots can use it) by EOD.

Traditionally, this meant manual trial-and-error. But recently, I’ve been experimenting with a more collaborative approach using integrated LLMs like Gemini in Chrome. Here's my experience.

## Beyond the sidebar: AI as a structural architect
In a recent internal SOP I developed, I broke down how we can leverage Gemini’s ability to read both the **visual pixels** and the **underlying DOM** simultaneously. 

Most people see an AI side-panel and think "chatbot." As a technical writer, I see an **accessibility tree inspector**. When I prompt Gemini to "describe the procedural steps for this screen," it isn't just guessing. It’s performing a real-time synthesis:
* **Spatial Recognition:** It sees a brightly colored rectangle and infers a "Primary Action Button" even if the code is a mess of non-standard `<div>` tags.
* **Semantic Context:** It looks at the URL (e.g., `/settings/security/certs`) and narrows its internal probability to industry-standard certificate workflows.

**The Insight:** AI allows us to move from **describing** what is on the screen to **validating** what the developer built. If the AI can't figure out what a button does, your user—and their screen reader—certainly won't either.

## The "always verify" mandate
There’s a temptation in our field to let the AI do the heavy lifting and hit "publish." But technical depth isn't just about using the tool; it's about knowing where the tool fails.

In my testing, I found that Gemini occasionally struggles with "busy" or highly custom UIs—what I call **orchestration noise**. This is where the human "SME" (Subject Matter Expert) role becomes critical. My workflow isn't "AI-generated"; it’s **AI-augmented**:
1. **AI** provides the structural skeleton (buttons, fields, widgets).
2. **I** provide the institutional knowledge (why the user is here, what the security implications are).

## Why "Ask Gemini" knows: The multimodal advantage
The internal response I documented explains that Gemini doesn't just read code; it "sees" snapshots. It recognizes icon patterns—magnifying glasses, gears, hamburger menus—from millions of trained UI designs. 

When we integrate this into our DDLC (Documentation Development Life Cycle), we aren't just writing docs; we are conducting a continuous **UX audit**. We are ensuring that our application follows the human expectations of design.

## The future of the technical writer
The role of the Senior Information Developer is shifting. We are no longer just "draft generators." We are **information auditors**. 

By mastering tools that interpret the DOM, the accessibility tree, and the visual state of an application, we become the bridge between the machine's code and the human's need for clarity.