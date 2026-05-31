# Skills Complete Guide

This guide explains how to use every skill in this repository to plan, build,
validate, and improve software in a repeatable way.

## Who This Is For

- Product and engineering teams starting new software initiatives.
- Architects and technical leads defining solution standards.
- Delivery teams enforcing governance and quality gates.

## Mandatory Baseline For Every Project

Before using domain skills, apply these mandatory controls:

1. Run Git preflight using [skills/git-sync-first/SKILL.md](../skills/git-sync-first/SKILL.md).
2. Enforce stack policy for agent solutions with [skills/approved-agent-stack/SKILL.md](../skills/approved-agent-stack/SKILL.md).
3. Enforce organization CoE governance with [skills/center-of-excellence-platform/SKILL.md](../skills/center-of-excellence-platform/SKILL.md).
4. Apply prompt quality policy with [skills/prompt-engineering-best-practices/SKILL.md](../skills/prompt-engineering-best-practices/SKILL.md).
5. Apply context quality policy with [skills/context-engineering-best-practices/SKILL.md](../skills/context-engineering-best-practices/SKILL.md).
6. Apply evaluation discipline with [skills/harness-engineering-best-practices/SKILL.md](../skills/harness-engineering-best-practices/SKILL.md).

## Recommended End-To-End Build Sequence

Use this sequence for software delivery from idea to production:

1. Strategy: define and prioritize what to build.
2. Modeling: convert strategy into stories, workflows, and success criteria.
3. Requirements: produce business, functional, system, and data requirements.
4. Architecture: assess current state and design target architecture.
5. Planning: create milestones, tracks, backlog, and implementation plan.
6. Execution: implement POC, collect feedback, optimize, and monitor.
7. Readiness: validate KPIs, risks, and production readiness.
8. Documentation: maintain living project documentation and technical artifacts.

## Skill Map By Domain

### Platform Governance

| Skill | Use When | Primary Output |
|---|---|---|
| [approved-agent-stack](../skills/approved-agent-stack/SKILL.md) | Selecting technologies for agent solutions | Stack compliance decision and remediation |
| [center-of-excellence-platform](../skills/center-of-excellence-platform/SKILL.md) | Enforcing organization-wide platform governance | CoE approval status, gaps, actions |
| [prompt-engineering-best-practices](../skills/prompt-engineering-best-practices/SKILL.md) | Writing and reviewing production prompts | Prompt quality decision and revised prompt |
| [context-engineering-best-practices](../skills/context-engineering-best-practices/SKILL.md) | Designing retrieval and context assembly | Context quality decision and context shaping guidance |
| [harness-engineering-best-practices](../skills/harness-engineering-best-practices/SKILL.md) | Building evaluation harnesses and quality gates | Harness quality decision and release gate recommendation |
| [git-sync-first](../skills/git-sync-first/SKILL.md) | Starting any repo change | Proceed or stop decision based on sync status |

### Use Case Strategy

| Skill | Use When | Primary Output |
|---|---|---|
| [define-use-case](../skills/define-use-case/SKILL.md) | Framing the use case and boundaries | Structured use case definition |
| [prioritize-use-cases](../skills/prioritize-use-cases/SKILL.md) | Ranking candidate opportunities | Prioritized list with rationale |
| [identify-stakeholders](../skills/identify-stakeholders/SKILL.md) | Establishing ownership and influence map | Stakeholder matrix and engagement approach |
| [define-business-objectives](../skills/define-business-objectives/SKILL.md) | Creating measurable business outcomes | Objective set with measurable targets |

### Use Case Modeling

| Skill | Use When | Primary Output |
|---|---|---|
| [create-use-case-story](../skills/create-use-case-story/SKILL.md) | Building narrative for a use case | Use case story draft |
| [define-user-stories](../skills/define-user-stories/SKILL.md) | Breaking work into implementable user stories | User story set with acceptance criteria |
| [define-workflows](../skills/define-workflows/SKILL.md) | Defining business and system process flow | Workflow map and decision points |
| [define-success-criteria](../skills/define-success-criteria/SKILL.md) | Clarifying what success means | Measurable success criteria |

### Requirements Engineering

| Skill | Use When | Primary Output |
|---|---|---|
| [generate-business-requirements](../skills/generate-business-requirements/SKILL.md) | Defining business constraints and outcomes | Business requirements document |
| [generate-functional-requirements](../skills/generate-functional-requirements/SKILL.md) | Defining system behavior and capabilities | Functional requirements specification |
| [generate-system-requirements](../skills/generate-system-requirements/SKILL.md) | Defining technical/system-level requirements | System requirements specification |
| [define-data-requirements](../skills/define-data-requirements/SKILL.md) | Defining data model and quality requirements | Data requirements and controls |

### Architecture and Design

| Skill | Use When | Primary Output |
|---|---|---|
| [assess-current-architecture](../skills/assess-current-architecture/SKILL.md) | Understanding baseline architecture | Current-state assessment |
| [design-target-architecture](../skills/design-target-architecture/SKILL.md) | Defining future architecture | Target architecture blueprint |
| [generate-architecture-diagram](../skills/generate-architecture-diagram/SKILL.md) | Visualizing architecture | Architecture diagram artifact |
| [identify-production-gaps](../skills/identify-production-gaps/SKILL.md) | Finding non-production-ready areas | Gap list and closure actions |

### Implementation Planning

| Skill | Use When | Primary Output |
|---|---|---|
| [create-implementation-plan](../skills/create-implementation-plan/SKILL.md) | Building phased delivery plan | Implementation plan with milestones |
| [define-milestones](../skills/define-milestones/SKILL.md) | Creating delivery checkpoints | Milestone roadmap |
| [define-solution-tracks](../skills/define-solution-tracks/SKILL.md) | Parallelizing workstreams | Solution track definitions |
| [create-backlog](../skills/create-backlog/SKILL.md) | Sequencing executable work | Prioritized backlog |

### Execution and Optimization

| Skill | Use When | Primary Output |
|---|---|---|
| [execute-poc](../skills/execute-poc/SKILL.md) | Running proof-of-concept implementation | POC execution results |
| [collect-feedback](../skills/collect-feedback/SKILL.md) | Gathering user and stakeholder feedback | Feedback summary and action plan |
| [optimize-solution](../skills/optimize-solution/SKILL.md) | Improving solution quality and efficiency | Optimization recommendations |
| [monitor-performance](../skills/monitor-performance/SKILL.md) | Measuring runtime outcomes | Performance trend and intervention plan |

### Validation and Readiness

| Skill | Use When | Primary Output |
|---|---|---|
| [perform-readiness-assessment](../skills/perform-readiness-assessment/SKILL.md) | Evaluating release preparedness | Readiness decision and checklist |
| [define-kpis](../skills/define-kpis/SKILL.md) | Defining objective performance measures | KPI framework |
| [risk-assessment](../skills/risk-assessment/SKILL.md) | Identifying and mitigating delivery risks | Risk register and mitigation plan |
| [validate-poc](../skills/validate-poc/SKILL.md) | Verifying POC goals and constraints | POC validation report |

### Documentation

| Skill | Use When | Primary Output |
|---|---|---|
| [create-use-case-document](../skills/create-use-case-document/SKILL.md) | Producing use case artifacts | Use case document |
| [create-architecture-document](../skills/create-architecture-document/SKILL.md) | Producing architecture artifacts | Architecture document |
| [generate-technical-specs](../skills/generate-technical-specs/SKILL.md) | Producing build-ready technical specs | Technical specification document |
| [maintain-docs-repository](../skills/maintain-docs-repository/SKILL.md) | Keeping docs current and consistent | Updated docs and structure hygiene |

### Template and Onboarding

| Skill | Use When | Primary Output |
|---|---|---|
| [sample-skill](../skills/sample-skill/SKILL.md) | Creating a new skill from a simple scaffold | Starter skill structure |

## Practical Usage Patterns

### Pattern 1: New Product Build

1. Run git-sync-first.
2. Define and prioritize use cases.
3. Define stakeholders and business objectives.
4. Define workflows, stories, and success criteria.
5. Generate full requirements set.
6. Assess current architecture and design target architecture.
7. Create implementation plan, milestones, tracks, and backlog.
8. Execute POC, gather feedback, optimize, monitor.
9. Run readiness, KPI, risk, and validation skills.
10. Publish and maintain docs.

### Pattern 2: Existing Product Modernization

1. Run git-sync-first.
2. Assess current architecture and identify production gaps.
3. Re-define key business objectives and KPIs.
4. Build updated target architecture and implementation plan.
5. Use prompt, context, and harness skills where AI components exist.
6. Optimize and monitor after release.

### Pattern 3: AI Feature Delivery In Existing Platform

1. Apply approved-agent-stack.
2. Apply prompt-engineering-best-practices.
3. Apply context-engineering-best-practices.
4. Apply harness-engineering-best-practices.
5. Run readiness and risk assessment before rollout.

## Quality Gates To Enforce On Every Project

1. Source sync gate: branch must be synchronized with remote target branch.
2. Governance gate: architecture, stack, and CoE policy compliance confirmed.
3. Requirements gate: business, functional, system, and data requirements complete.
4. Validation gate: KPI, risk, and readiness evidence approved.
5. Documentation gate: use case, architecture, and technical specs current.

## What To Do If A Team Is Unsure Which Skill To Start With

1. Start with [skills/git-sync-first/SKILL.md](../skills/git-sync-first/SKILL.md).
2. If scope is unclear, use [skills/define-use-case/SKILL.md](../skills/define-use-case/SKILL.md).
3. If stakeholders are unclear, use [skills/identify-stakeholders/SKILL.md](../skills/identify-stakeholders/SKILL.md).
4. If architecture is unclear, use [skills/assess-current-architecture/SKILL.md](../skills/assess-current-architecture/SKILL.md).
5. If release risk is unclear, use [skills/perform-readiness-assessment/SKILL.md](../skills/perform-readiness-assessment/SKILL.md).

## Related Repository References

- Contribution process: [docs/CONTRIBUTING.md](CONTRIBUTING.md)
- Writing standards: [docs/STYLEGUIDE.md](STYLEGUIDE.md)
- Skill inventory summary: [docs/external/skills-overview.md](external/skills-overview.md)
