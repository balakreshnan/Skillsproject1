# Contributing

## Mandatory Preflight Before Any Change
Run the following commands and ensure your branch is up to date before starting implementation:
1. git fetch --all --prune
2. git status -sb
3. git rev-list --left-right --count HEAD...origin/main

If your branch is behind origin/main, pull latest changes first:
- git pull --rebase origin main

## Mandatory Agent Stack Standard
For agent solutions in this repository, use the following stack by default:
1. UI: Streamlit
2. Agent orchestration: Microsoft Agent Framework
3. Individual agents: Microsoft Foundry Prompt agent or Microsoft Foundry Hosted agent

TypeScript is allowed only when the use case explicitly requires TypeScript-specific integration or runtime constraints.

## Mandatory Security And Data Handling Standard
Apply the following defaults for all application-oriented skills:
1. Authentication: use DefaultAzureCredential or Managed Identity by default. Do not hardcode credentials in source files.
2. Secrets and keys: store keys, connection strings, and other secrets in environment variables loaded from a local .env file. Never commit secrets to the repository.
3. Privacy: do not store personal data (PII) in this repository. Use anonymized or synthetic sample data for examples and tests.
4. Data persistence: store operational data in Cosmos DB or another approved database. If file-based storage is required for local/dev scenarios, use a dedicated data/ folder and JSON or JSONL files.
5. Production applications: enable OpenTelemetry (OTEL) observability, including traces, metrics, and logs.

## Add A New Skill
1. Create a folder under skills/<skill-name>/.
2. Copy templates/SKILL.template.md to skills/<skill-name>/SKILL.md.
3. Reuse templates/security-data-otel.template.md for the Security And Data Handling section.
4. Add examples under skills/<skill-name>/examples/.
5. Add tests under skills/<skill-name>/tests/prompts.jsonl.
6. Update skills/_catalog/index.yaml.
7. Run scripts/validate-skills.ps1.

## Pull Request Checklist
- Skill frontmatter is present and valid.
- All required sections exist.
- At least one example is included.
- At least one test prompt is included.
- Changelog updated.
- Security and data handling requirements are documented and followed.
- Production observability requirement (OTEL) is documented for applicable skills.
