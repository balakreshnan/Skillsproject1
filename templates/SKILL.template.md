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
