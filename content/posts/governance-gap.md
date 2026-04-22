---
title: "The governance gap: Why your AI shouldn’t have your API keys (yet)"
date: 2026-04-22
description: "An architectural look at the Model Context Protocol (MCP) and why technical writers are the key to bridging the AI governance gap."
categories: ["AI Governance", "Content Engineering"]
tags: ["MCP", "API Design", "Security", "AI Readiness"]
draft: false
---

I was recently digging through a GitHub repository shared by a friend—a project dealing with **MCP (Model Context Protocol)** server capabilities and governance. 

Out of the kindness of his heart (and fueled by our long-winded debates on the topic), he put together a sandbox to help me visualize what happens when you string together AI, APIs, and documentation. What I found was a sobering look at the "Governance Gap"—and a clear signal that the role of the Technical Writer is about to become more architecturally significant than ever before.

## What does "behavior at the edges" actually mean?
In my notes on the repo, I kept coming back to a phrase: *behavior at the edges.* If you’ve spent your career documenting REST APIs for enterprise security, you know exactly what this feels like. 

Traditional APIs are deterministic. They follow the "If X, then Y" logic. But when an AI agent interacts with an API "at the edge," it is interpreting intent. The problem is that **APIs weren't inherently designed for AI agents.** There is no native governance layer. Once an AI agent creates a client to perform a task steered by a human, there is often zero human review of the actual API calls being made. The AI is essentially "hallucinating" a path through your endpoints.

## The MCP server: Bridge or highway?
This is where the **Model Context Protocol (MCP)** comes into play. Most people see MCP as a way to expose capabilities—allowing an agent to pull audit logs, check management settings, or import policies.

But is an MCP server inherently "safe"? Nowadays, the common thinking is that they are inherently insecure. If we don't design the server to dictate the actions an AI can take—controlling the inputs to control the outputs—what is the actual benefit to the user? API users don't want to pour over parameters; they want to achieve a business use case. If the "bridge" we build doesn't have a toll booth and a guard rail, it’s just a highway for potential "edge case" disasters.

## The scoring framework: Why "read-only" isn't enough
My friend’s repo introduces an "AI Readiness Scoring" framework that changed how I look at my own documentation. It scores capabilities across five dimensions: **Security Risk, Data Sensitivity, Operational Impact, Predictability, and Reversibility.**

I used to think that if an operation was "Read-Only," it was Tier 1 (Safe). But consider a "Generate Compliance Report" capability. 
* It’s technically a `GET` or a `POST` that doesn't change state. 
* **However**, it’s computationally expensive (Operational Impact). 
* It aggregates sensitive PII (Data Sensitivity). 

An AI agent, left to its own devices, could "DDoS" a production server by repeatedly requesting massive reports, or inadvertently leak an entire organization's security posture. This is why many organizations deem unmanaged MCP a security risk. It’s about the lack of **Ontology.**

## From technical writer to capability architect
The person who spent years explaining what an API does is now the most qualified person to decide what an AI is allowed to do with it.

We’ve been doing informal AI Readiness Scoring for a decade. Every time we write a "Warning" box or a "Danger" callout in a README, we are defining the governance of that endpoint. In an AI-first world, that knowledge moves from the "Manual" into the "Metadata." We are designing **Capability Abstractions.**

## Closing the gap
If your company has blocked MCP or autonomous agents from residing within your production repos, **they are right to do so.** We cannot automate the AI until we can govern the AI. Our goal shouldn't be to get straight to the results; it should be to build the governance layer that makes those results safe. 

The "Third Way" of AI integration isn't just better code. It’s better policy, structured through the lens of people who actually understand how APIs behave when pushed to the edge.

***

*What are you doing to score your APIs for AI readiness? Are you still documenting for humans, or are you starting to design for agents? Let’s discuss.*