---
name: prompt-engineering-best-practices
version: 0.1.0
owner: platform-team
status: active
tags:
  - governance
  - enforcement
---

# Description
Define and enforce prompt engineering best practices for consistent, safe,
and high-quality outputs across the organization.

# When To Use
Use this skill when creating, reviewing, or updating system prompts,
user prompts, task prompts, and prompt templates for production workflows.

# When Not To Use
Do not use this skill for non-prompt code-only tasks, infrastructure-only
changes, or one-time local experiments with no reuse intent.

# Inputs
- Prompt intent and target use case.
- Success criteria and output format requirements.
- Risk constraints, policy constraints, and failure modes.
- Optional examples of good and bad prompt outcomes.

# Outputs
- Prompt quality decision: approved, approved with actions, or blocked.
- Concrete prompt improvements for clarity, constraints, and structure.
- Prompt evaluation checklist with pass/fail criteria.

# Security And Data Handling
- Do not include secrets, credentials, or private data in prompts.
- Do not store personal data (PII) in prompt assets in this repository.
- Use redaction patterns in examples and test prompts.
- Ensure output requests avoid restricted or unsafe content generation.

# Examples
See examples/basic.md.

# Limitations
This skill improves prompt quality and governance but does not replace runtime
safety systems, policy filters, or robust application validation.

## Prompt Engineering Enforcement Checklist
1. Define clear task objective and explicit success criteria.
2. Specify role, boundaries, and non-goals.
3. Constrain response format and decision style.
4. Include required context and exclude irrelevant context.
5. Add examples only when they improve reliability.
6. Add refusal behavior for disallowed requests.
7. Validate against a representative prompt test set.
