# GenerateFunctionalRequirements

## Purpose
Generate functional requirements for user and system capabilities.

## Internal Guidance
- Capture assumptions, constraints, and dependencies.
- Link related artifacts and decisions.
- Record unresolved questions and owners.

## Required Standards
- Use DefaultAzureCredential or Managed Identity for application authentication by default.
- Read secrets and keys from environment variables (local development can use a local .env file).
- Do not store personal data (PII) in the repository.
- Use Cosmos DB or another database for persisted data when possible.
- If file-based persistence is required, store data under a dedicated data/ folder in JSON or JSONL format.
- For production applications, require OpenTelemetry (OTEL) observability with traces, metrics, and logs.