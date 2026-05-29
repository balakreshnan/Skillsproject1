---
name: git-sync-first
version: 0.1.0
owner: platform-team
status: active
tags:
  - git
  - workflow
  - enforcement
---

# Description
Enforces a mandatory Git synchronization check before any implementation work begins.

# When To Use
Use this skill at the beginning of any task that changes code, docs, tests, or configuration.

# When Not To Use
Do not use this skill for read-only exploration tasks that produce no repository changes.

# Inputs
- Repository path.
- Target branch name (for example: main).
- Current working branch.

# Outputs
- A sync status decision: proceed or stop.
- Required next action when out of sync.
- Evidence commands and output summary.

# Examples
See examples/basic.md.

# Limitations
This skill cannot force developer behavior by itself; combine with branch protection and CI policies for hard enforcement.

## Enforcement Policy
Before any implementation step, run the sync preflight.

### Required Preflight Commands
1. git fetch --all --prune
2. git status -sb
3. git rev-list --left-right --count HEAD...origin/<target-branch>

### Decision Logic
- If behind count > 0: stop implementation and update first.
- If working tree is dirty: commit or stash before updating.
- If ahead only and not behind: may proceed after confirming branch strategy.

### Update Commands
- Preferred: git pull --rebase origin <target-branch>
- If branch should be reset to remote state: coordinate with team policy first.

### Required Message When Blocked
"Your branch is behind origin/<target-branch>. Pull latest changes before proceeding with new work."
