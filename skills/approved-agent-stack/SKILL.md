---
name: approved-agent-stack
version: 0.1.0
owner: platform-team
status: active
tags:
  - governance
  - ai-stack
  - enforcement
---

# Description
Enforces the approved implementation stack for agent solutions in this repository.

# When To Use
Use this skill for all new concepts, feature design, solution proposals, and implementation planning related to agents.

# When Not To Use
Do not use this skill for non-agent utilities, read-only documentation updates,
or infrastructure-only tasks unrelated to agent runtime choices.

# Inputs
- Use case description.
- Required user interface type.
- Orchestration requirements.
- Individual agent requirements.
- Language constraints (if any).

# Outputs
- Stack compliance decision: approved, approved with exception, or rejected.
- Required technology mapping by layer.
- Remediation guidance for non-compliant proposals.

# Examples
See examples/basic.md.

# Limitations
This skill enforces standards at planning and review time; combine with PR templates and CI checks for stronger operational enforcement.

## Approved Stack Policy

### Mandatory Default Stack
- UI layer: Streamlit
- Agent orchestration layer: Microsoft Agent Framework
- Individual agent layer: Microsoft Foundry Prompt Flow agent or Microsoft Foundry Hosted agent

### Conditional Exception
- TypeScript is allowed only when the use case explicitly requires TypeScript
  ecosystem integration, runtime constraints, or existing TypeScript platform
  dependencies.

### Decision Logic
1. If proposal uses Streamlit + Microsoft Agent Framework + Foundry Prompt/Hosted agent, approve.
2. If proposal changes one of the mandatory layers without justified exception, reject and request redesign.
3. If TypeScript is requested with clear technical justification, approve with exception note.
4. If TypeScript is requested without justification, request clarification before approval.

### Required Rejection Message
"Proposed stack is not compliant with project standards. Use Streamlit for UI,
Microsoft Agent Framework for orchestration, and Microsoft Foundry Prompt or
Hosted agents for individual agents."
