---
title: "342 topics to 58: what AI-assisted IA restructuring actually took"
date: 2026-09-16
description: "A real-world case study on using AI to condense 342 legacy documentation topics down to 58 Head Topics while cutting page count by 83%."
tags: ["Information Architecture", "AI", "DITA", "Docs-as-Code"]
showToc: true
draft: false
---

# 342 topics to 58: what AI-assisted IA restructuring actually took

I just ran a real project through an AI-assisted documentation restructuring, and I want to record what happened while it's still fresh — the good, the rough edges, and the stuff I'm still going to have to fix by hand.

The docs in question are install/upgrade/DB documentation: an Install guide, an Upgrade guide, and an Oracle 19c database guide. All three started life as separate PDFs — a system requirements guide, a database implementation guide, an installation guide — each written to be read start to finish. They're not PDFs anymore. They're part of one HTML help system, and nobody reads a help system start to finish. They search it, or they Google it, looking for one specific task. The old segmentation — one short topic per micro-step, spread across hundreds of pages — actively works against that. Completing something as simple as "install a detection server" meant stitching together content from five to seventeen separate topics.

The fix is a "Head Topic" model: one comprehensive topic per real task, answering six fixed questions in a fixed order — benefits, prerequisites, procedure, verification, best practices, troubleshooting. Instead of hopping between pages, you land on the page for your task and everything you need is there.

## The process

I broke this into four phases and had Claude run most of them:

1. **Deep-dive analysis.** Look at the existing topic set across all three guides and find the actual problems — OS-duplication patterns, empty "router" topics that exist only to link to other topics, micro-topics that are a single step doing nothing else, content duplicated across guides, straight-up data-quality defects.
2. **Head Topic outline.** For each guide, decide what merges into what, in what order, with what left out and why. This is the part that needed the most of my own judgment — OS-variant handling in particular. Sometimes Windows and Linux differ by one command inside an otherwise identical flow, and that's a single topic with if/then branching. Sometimes they differ in nearly every phase, and that's two separate topics. I made that call per-topic, not per-guide.
3. **Draft, verify, fix.** Once I signed off on the outlines, Claude drafted every Head Topic, then ran a second, independent pass re-checking every draft against its source topics to make sure nothing got silently dropped in the merge.
4. **Map and report.** Build a navigable map for each guide, and write up the whole thing as a content spec.

## The numbers

Here's the actual headline, before we get to page counts: this run condensed months of information architecture analysis, refactoring, and hand-coded DITA work down to a few days. Not "faster." Months to days.

The page-count number is still worth putting in front of people, because it's concrete and it's real:

Cut overall page count by 83%. Seriously.

| Guide | Old topics | New Head Topics |
|---|---|---|
| Oracle 19c DB | 70 | 11 |
| DLP Install | 151 | 28 |
| DLP Upgrade | 121 | 19 |
| **Total** | **342** | **58** |

That's not a rounding trick — it's consolidation. Nothing procedural got deleted; what went away were the routers, the empty "About" wrappers, and the one-line orientation topics that existed only because the old PDF structure demanded a topic per heading level.

But the page count isn't actually the win. The win is that the analysis-and-refactor work behind that table — the part that normally eats a quarter or more of a writer's year — happened in days instead of months.

## What worked

The IA standard actually got applied consistently, not just in the topics I was paying close attention to. Readability is better across the board — six-question structure, prerequisites up front, verification and troubleshooting where you'd expect them.

The result also more closely aligns with the Support team's Quick Install/Upgrade Guides — the field-tested runbook-style docs Support built on their own because the canonical docs were too slow to use — without losing the specificity those runbooks intentionally leave out. That was the actual design goal, not an accident: use Support's sequencing as ground truth for what order things happen in, but keep the full detail a real install or upgrade needs.

And I didn't just get three restructured guides out of this — I got a reusable process. The whole four-phase method is now four skills I can point at any documentation set, not just this one. That matters, because I plan to hand this to my team, not keep it as something only I know how to run.

Here's why that matters more than it might sound like: the PDF-to-HTML transition that made these three guides obsolete didn't just happen to DLP. It happened across multiple product lines, and there are roughly 10 other doc writers on my team sitting on the exact same kind of technical debt — content that was fine as a PDF and is actively hostile to readers now that it lives in a searchable help system. Each of them is looking at the same months-long slog I would have been looking at if I'd done this by hand. If this process holds up on a second run, that's not "I saved myself some time," that's months and months of work saved across the team, multiplied by however many of those 10 guides get run through it.

## What's still rough

Here where I need to be frank because "it worked" isn't the same as "it's done."

**The drafting skill needs to actually reference the DITA-OT specs and constraints.** I hit a real wall here: I noticed — and resolved — a lot of validation errors that never should have made it into the drafts in the first place. Structural stuff: sections nesting content they're not allowed to contain, element ordering the DITA schema requires and the draft didn't follow. I've updated the skill to bake in the actual content-model rules and to validate against the real DITA-OT toolchain instead of just checking that the XML is well-formed. But I haven't run a second project through it yet, so I don't actually know if the fix took. That's next.

**I never told it to make graphics.** No process-flow diagrams, nothing visual, because I didn't ask for that. It's a later interaction, not a limitation of the approach.

**Quality isn't even across the three guides.** The DB and Install sections came out clunky in places. The Upgrade section turned out good, mostly. I don't have a clean theory yet for why upgrade fared better — maybe this was the point where I picked up on day two — but it's a real difference and worth digging into before I trust this on the next guide.

**There are missing topic references**, and I've tracked down why: some topics get referenced twice — once in the guide-specific map, and again in the main help map — and the restructuring didn't account for both references pointing at the same place. That's going to take some dedicated time to fix, either all at once or topic by topic. Haven't decided which yet.

**There's funky wording here and there.** One example: "Verify that operates correctly by performing checks on..." — which is the kind of sentence that's grammatically almost right but reads like nobody actually said it out loud. I've only found the one so far, but I'd bet money there are more once I start reading closely.

**Some real nuance got lost in the merge.** The clearest example: one topic reads like you have to choose between updating your detection servers or your clusters — an either/or. That's wrong. In practice you update whichever ones you're actually running, and plenty of environments run both. That's not a wording nit, that's a comprehension bug, and it's the kind of thing I'm glad a human is still reading this before it ships.

There's more in the content spec, but the rest of it is line-level text stuff I'll catch by just page-turning through the content myself.

## What I still can't tell you

Everything above is process metrics — topics consolidated, time saved, errors caught. None of it tells me whether a customer actually has an easier time installing DLP now. I don't have a system in place to measure that yet, and I don't want to claim a win on customer success and satisfaction that I haven't actually measured.

So the next thing I'm setting up is a Goal-Question-Metric (GQM) framework, specifically to track whether this IA refactor improves on the existing content from the reader's side, not just the writer's side. Start with the goal (something like: reduce the effort and time it takes a DLP admin to complete an install or upgrade task), derive the questions that would tell me if I'm hitting that goal (are support tickets referencing these tasks going down? are readers landing on fewer pages per task? is time-to-completion improving?), and only then decide what to actually measure. I'd rather build the measurement plan deliberately than bolt on a vanity metric after the fact because it was easy to pull.

## Where this leaves me

I don't think this replaces a writer's judgment, and I wasn't trying to prove that it does. What it did was take a genuinely large, tedious restructuring — the kind of project that's easy to keep putting off because the amount of manual topic-shuffling is daunting, and that normally costs months — and get it 80-some percent of the way there in a few days. The remaining 20% is exactly the part that needed a human anyway: judgment calls about what a reader actually needs to know, catching the spots where the model's confident sentence construction papered over a real logic error, and deciding what "better" even means for the people reading this.

Two things next: run this on a second project to see if the DITA-OT fix actually holds, and get a GQM framework in place so the next time I write a post like this, I can back up "it's better" with something more than a topic count.