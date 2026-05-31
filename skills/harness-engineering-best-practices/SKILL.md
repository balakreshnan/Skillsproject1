---
name: harness-engineering-best-practices
version: 0.1.0
owner: platform-team
status: active
tags:
  - governance
  - enforcement
---

# Description
Define and enforce harness engineering best practices for repeatable,
objective, and auditable prompt and agent evaluation workflows.

# When To Use
Use this skill when designing or reviewing test harnesses for prompts,
agents, retrieval pipelines, and production quality gates.

# When Not To Use
Do not use this skill for ad hoc manual checks without repeatability,
or for non-evaluation tasks unrelated to quality verification.

# Inputs
- Evaluation goals and acceptance thresholds.
- Test dataset scope, risk coverage, and edge cases.
- Metrics definitions and grader strategy.
- Execution constraints for cost, latency, and frequency.

# Outputs
- Harness quality decision: approved, approved with actions, or blocked.
- Required improvements for coverage, scoring, and traceability.
- Release gate recommendation tied to defined thresholds.

# Security And Data Handling
- Use sanitized datasets and avoid including secrets.
- Exclude PII from benchmark files unless explicitly approved.
- Log evaluation results with trace IDs and reproducibility metadata.
- Ensure eval artifacts are stored in approved locations only.

# Examples
See examples/basic.md.

# Limitations
This skill enforces evaluation discipline but cannot guarantee full
production behavior coverage for unseen real-world inputs.

## Harness Engineering Enforcement Checklist
1. Define measurable pass/fail thresholds before execution.
2. Cover core scenarios, edge cases, and policy-risk cases.
3. Use deterministic settings where reproducibility is required.
4. Track prompt, model, and dataset versions per run.
5. Separate smoke checks from deep regression suites.
6. Report failures with actionable diagnostics.
7. Gate release decisions using agreed threshold rules.
