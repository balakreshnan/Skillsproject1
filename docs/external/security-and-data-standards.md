# Security And Data Standards

These standards apply to application-oriented skill implementations:
- Use DefaultAzureCredential or Managed Identity for authentication.
- Store secrets in environment variables (local dev can use a local .env file).
- Do not store personal data (PII) in the repository.
- Use Cosmos DB or another approved database for persisted data.
- If local file persistence is needed, use data/ with JSON or JSONL files.
- Enable OpenTelemetry (OTEL) in production for traces, metrics, and logs.