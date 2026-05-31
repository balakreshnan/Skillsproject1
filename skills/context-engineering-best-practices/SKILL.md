---
name: context-engineering-best-practices
version: 0.1.0
owner: platform-team
status: active
tags:
  - governance
  - enforcement
---

# Description
Define and enforce context engineering best practices so model context is
relevant, minimal, traceable, and aligned with task outcomes.

# When To Use
Use this skill when designing retrieval inputs, context windows, grounding
payloads, and context assembly pipelines for agent or assistant workflows.

# When Not To Use
Do not use this skill for tasks with no model context dependency,
non-AI workflows, or local-only throwaway analysis.

# Inputs
- Task objective and response requirements.
- Candidate context sources and retrieval strategy.
- Context size limits and latency constraints.
- Quality signals for relevance, freshness, and trust.

# Outputs
- Context quality decision: approved, approved with actions, or blocked.
- Context shaping guidance: what to include, exclude, and rank.
- Validation checklist for grounding quality and drift control.

# Security And Data Handling
- Exclude secrets and restricted data from context payloads.
- Minimize data included in context to least-required scope.
- Ensure source attribution and data lineage for retrieved context.
- Avoid persisting sensitive context in logs unless explicitly approved.

# Examples
See examples/basic.md.

# Limitations
This skill improves context quality and governance but does not guarantee
model correctness when source data is incomplete or inaccurate.

## Context Engineering Enforcement Checklist
1. Define required context fields from task intent.
2. Rank sources by trust, freshness, and relevance.
3. Deduplicate and compress context before prompt assembly.
4. Enforce context budget and truncation policy.
5. Add source attribution for all external facts.
6. Test for missing-context and over-context failure modes.
7. Review drift risk and update retrieval controls.
