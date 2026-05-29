# Style Guide

## Writing Style
- Be specific and action oriented.
- Prefer concise steps over long prose.
- Keep examples realistic and testable.

## Section Rules
- Use the exact required section headers.
- Keep non-goals explicit in When Not To Use.
- Document limitations honestly.

## Naming
- Skill folder names: kebab-case.
- Skill name in frontmatter should match folder name.

## Security And Data Standards
- For application authentication, default to DefaultAzureCredential or Managed Identity.
- Keep secrets in environment variables and local .env files; never commit secrets to git.
- Do not place personal data (PII) in this repository.
- Prefer Cosmos DB or another database for persisted data.
- If local file storage is necessary, use a dedicated data/ folder with JSON or JSONL files.
- Production applications must include OpenTelemetry (OTEL) observability for traces, metrics, and logs.
