---
name: <skill-name>
version: 0.1.0
owner: <owner-id>
status: active
tags:
  - <tag-1>
---

# Description
Describe the skill purpose.

# When To Use
List clear trigger conditions.

# When Not To Use
List non-goals and exclusions.

# Inputs
- Required inputs
- Optional inputs

# Outputs
- Expected response format

# Governance And Compliance
- Break implementation code into reusable functions.
- Place shared reusable code in a `utility/` folder.
- Reuse existing utilities before creating new code; avoid duplicates.
- Do not add unnecessary code.
- Revalidate changes and remove unwanted or dead code to keep the repository clean.

# Core Delivery Principles
Apply these four principles for every application and use-case implementation:

1. Think Before Coding
- State assumptions explicitly.
- Surface ambiguity and tradeoffs before implementation.
- Ask for clarification when requirements are unclear.

2. Simplicity First
- Implement only what was requested.
- Prefer the minimum code needed to solve the problem.
- Avoid speculative abstractions and unnecessary configurability.

3. Surgical Changes
- Touch only code required for the requested outcome.
- Preserve existing style and avoid unrelated refactors.
- Remove only unused artifacts created by your own change.

4. Goal-Driven Execution
- Define clear, verifiable success criteria.
- For multi-step work, include a brief plan with verification per step.
- Validate outcomes with tests/checks before completion.

# Security And Data Handling
Use templates/security-data-otel.template.md as the canonical snippet for this section.

- Use DefaultAzureCredential or Managed Identity for application authentication by default.
- Read secrets and keys from environment variables (local development can use a local .env file).
- Do not store personal data (PII) in the repository.
- Use Cosmos DB or another database for persisted data when possible.
- If file-based persistence is required, store data under a dedicated data/ folder in JSON or JSONL format.
- For production applications, require OpenTelemetry (OTEL) observability with traces, metrics, and logs.

# Examples
Reference files under examples/.

# Limitations
Document known limits and caveats.
