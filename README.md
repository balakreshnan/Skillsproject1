# Skillsproject1

Centralized repository for defining, testing, and governing reusable skills.

## Project Structure

- skills/
	- _catalog/
		- index.yaml
		- tags.yaml
		- owners.yaml
	- sample-skill/
		- SKILL.md
		- examples/basic.md
		- tests/prompts.jsonl
		- assets/README.md
		- CHANGELOG.md
- templates/
	- SKILL.template.md
	- prompts.template.jsonl
- scripts/
	- validate-skills.ps1
	- lint-skills.ps1
	- build-catalog.ps1
- docs/
	- CONTRIBUTING.md
	- STYLEGUIDE.md
	- RELEASE.md
- .github/workflows/
	- validate-skills.yml
	- release-skills.yml

## Quick Start

1. Copy templates/SKILL.template.md into skills/<new-skill>/SKILL.md.
2. Add examples and test prompts for the new skill.
3. Update skills/_catalog/index.yaml.
4. Run validation locally:
	 - powershell -ExecutionPolicy Bypass -File .\scripts\lint-skills.ps1
	 - powershell -ExecutionPolicy Bypass -File .\scripts\validate-skills.ps1

## Mandatory Workflow Rule

Before any implementation work, apply the git-sync-first skill policy:
1. git fetch --all --prune
2. git status -sb
3. git rev-list --left-right --count HEAD...origin/main

If behind origin/main, update first:
- git pull --rebase origin main

## Mandatory Agent Technology Stack

For agent-based solutions, use:
1. Streamlit for UI
2. Microsoft Agent Framework for orchestration
3. Microsoft Foundry Prompt agent or Hosted agent for individual agents

TypeScript is allowed when the use case requires it.

## Mandatory Security And Data Handling Rules

For all application-oriented skills in this repository:
1. Authentication must default to DefaultAzureCredential or Managed Identity.
2. Keys, connection strings, and secrets must be read from environment variables (for local development, load from a local .env file).
3. Personal data (PII) must not be stored in this repository.
4. Persisted data should use Cosmos DB or another appropriate database.
5. If local file-backed persistence is needed, use a dedicated data/ folder with JSON or JSONL files.
6. Production applications must have OpenTelemetry (OTEL) observability enabled (traces, metrics, and logs).

## Mandatory Governance And Compliance Rules

For all projects and use-case build-outs in this repository:
1. Break implementation code into reusable functions.
2. Put shared reusable code in a utility/ folder.
3. Reuse existing utilities first and avoid duplicate implementations.
4. Do not write unnecessary code.
5. Revalidate changes and remove dead or unwanted code to keep the repository clean.

## Goals

- Keep all skills in one discoverable location.
- Enforce consistency with templates and validation scripts.
- Provide CI checks so quality gates run on every PR.
- Require developers to sync with latest remote updates before starting changes.
- Standardize agent solution architecture across UI, orchestration, and agent runtime.
