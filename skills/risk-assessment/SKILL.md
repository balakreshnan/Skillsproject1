---
name: risk-assessment
version: 0.1.0
owner: platform-team
status: active
tags:
  - validation-readiness
  - governance
---

# Description
Assess risks, mitigation strategies, and residual risk posture.

# When To Use
Use this skill when planning or delivering tasks under the Validation and Readiness domain.

# When Not To Use
Do not use this skill for unrelated domains or off-scope tasks.

# Inputs
- Use case context and current state.
- Constraints, assumptions, and dependencies.
- Stakeholders and target outcomes.

# Outputs
- Structured output tailored to RiskAssessment.
- Clear decisions, rationale, and next actions.

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
Outputs depend on the quality and completeness of provided context and constraints.
