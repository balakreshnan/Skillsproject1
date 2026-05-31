---
name: center-of-excellence-platform
version: 0.1.0
owner: platform-team
status: active
tags:
  - governance
  - enforcement
---

# Description
Define and enforce Center of Excellence (CoE) platform standards across the
organization for intake, architecture decisions, implementation quality, and
operational readiness.

# When To Use
Use this skill when a team is proposing, building, reviewing, or scaling
platform capabilities that must align with organization-wide CoE rules.

# When Not To Use
Do not use this skill for single-team local experiments, one-off prototypes
without production intent, or tasks that do not require organizational
governance.

# Inputs
- CoE operating model and organizational scope.
- Platform proposal, architecture, or implementation plan.
- Current standards and non-negotiable controls.
- Optional organizational reference image: CoE-Image1.jpg.

# Outputs
- CoE compliance decision: approved, approved with actions, or blocked.
- Gaps against required organization-wide platform standards.
- Ordered remediation actions with owners and review checkpoints.

# Security And Data Handling
- Use DefaultAzureCredential or Managed Identity for application authentication by default.
- Read secrets and keys from environment variables (local development can use a local .env file).
- Do not store personal data (PII) in the repository.
- Use Cosmos DB or another database for persisted data when possible.
- If file-based persistence is required, store data under a dedicated data/ folder in JSON or JSONL format.
- For production applications, require OpenTelemetry (OTEL) observability with traces, metrics, and logs.

# Examples
See examples/basic.md.

# Limitations
This skill governs review and decision quality but cannot technically enforce
controls by itself without CI, policy automation, or platform guardrails.

## CoE Platform Enforcement Checklist
1. Confirm scope: team-level, business-unit, or enterprise-wide.
2. Validate architecture patterns against approved reference patterns.
3. Verify mandatory controls: identity, data handling, observability, and deployment safety.
4. Check reusability posture: shared utilities first, no duplicate implementations.
5. Define release gate status and required remediation for non-compliance.
6. Record decision with rationale and accountable owners.
