# CLAUDE.md

This file provides comprehensive context engineering guidance for Claude Code (claude.ai/code) when working
with the Next Friday Core Engineering Guideline repository.

## Context Engineering Overview

This repository follows context engineering principles to provide systematic, comprehensive context rather than
relying on prompt engineering. Every interaction should be informed by the complete project context defined in
this file.

### Context Engineering Methodology

This project implements dynamic context engineering principles following best practices from Phil Schmid's framework:

1. **Global Rules** (this file) - Project-wide guidelines and conventions
2. **Validation Gates** - Automated quality assurance and compliance checking
3. **Dynamic Context Composition** - Right information, right format, right time

### Context Engineering Principles

- **Dynamic Context Composition**: Provide tailored, task-specific context
- **Information Quality**: Concise summaries over raw data dumps
- **Structural Approach**: Treat context as a system, not just strings
- **Contextual Enrichment**: Include relevant tools and capabilities
- **Missing Detail Prevention**: Ensure crucial information is never omitted

### Implementation Pattern

When working on features:

1. Validate against established rules in this file
2. Apply dynamic context composition for task-specific needs
3. Ensure all changes pass automated validation gates

## Project Overview

This is the **Next Friday Core Engineering Guideline** repository - a centralized engineering handbook that
serves as the single source of truth for engineering practices across all Next Friday projects. It defines
company-wide standards for naming conventions, commit messages, code formatting, and development workflows.

## Documentation Maintenance Commands

### Package Management

- **Package Manager**: pnpm (required for tooling only)
- **Node Version**: >=22.0.0
- **pnpm Version**: >=10.15.1

### Documentation Quality Commands

```bash
# Format all markdown and config files
pnpm prettier

# Lint markdown files
pnpm markdownlint

# Fix markdown issues
pnpm markdownlint:fix

# Sort package.json
pnpm sort-package-json
```

### Git Hooks

Pre-commit hooks are configured via Husky:

- **pre-commit**: Runs lint-staged (prettier, markdownlint, package.json sorting)
- **commit-msg**: Enforces conventional commit format via commitlint

## Key Standards and Conventions

### Commit Message Format

Strictly enforced via commitlint - follows Conventional Commits v1.0.0:

```text
<type>(<scope>): <subject>
```

- **type**: lowercase, required (build, chore, ci, docs, feat, fix, perf, refactor, revert, style, test)
- **scope**: lowercase, required (e.g., auth, order, officialsite, infra)
- **subject**: ≤50 characters, imperative mood, no trailing punctuation
- **body/footer**: must be empty

### Naming Conventions

The repository defines comprehensive naming standards across 8 categories:

1. GitHub repositories: `<org>/<project>-<tech>-<module>-<purpose>[-lab]`
2. Databases: `<org>_<project>_<module>_<purpose>_<dbtype>_<env>`
3. Object storage: `<org>_<project>_<module>_<purpose>_<storage>_<env>`
4. Cloud/infra: `<org>-<project>-<module>-<purpose>-<env>`
5. Application services: `<org>_<project>_<module>_<purpose>_<service>_<env>`
6. Monitoring/logging: `<org>_<project>_<module>_<purpose>_<tool>_<env>`
7. Front-facing assets: `<env>.<project>.<org>.com`
8. Collaboration tools: `<project>-<module>-<env>`

### Code Formatting

Prettier configuration:

- 120 character line width
- 2 space indentation
- Semicolons required
- Double quotes
- Trailing commas
- LF line endings

## Repository Structure

```text
docs/                    # Core documentation standards
├── NAMING_CONVENTION.md  # 8-category naming standards
├── COMMIT_CONVENTION.md  # Conventional commit rules
├── DOCUMENTATION_STANDARD.md  # Documentation guidelines
└── BRANCHING_STRATEGY.md # Git workflow and branching standards
.claude/                 # Context engineering system
├── CLAUDE.md            # Context engineering guidance (this file)
├── settings.json        # Claude Code project settings
└── hooks/               # Automation scripts
    └── format-docs.sh   # Documentation formatting script
.markdownlint.json       # Markdown linting configuration
```

## Project-Specific Rules

### Documentation Standards

- All documentation must be in English
- File names: UPPERCASE_WITH_UNDERSCORES.md
- Every document requires: Title, Purpose, Scope, Rules/Guidelines, Examples, References
- Ownership and 6-month review cycle required
- All changes via PR with peer review

### Code Style Rules

- **STRICTLY PROHIBITED - ZERO TOLERANCE**:
  - Never use emojis anywhere - not in code, documentation, commit messages, scripts, or any text content
  - Never add comments in shell scripts, bash files, or automation code
  - Never include explanatory text beyond essential echo statements for user feedback
  - Never disable linting rules - all rules must be enforced
- **Professional Standards**: Maintain strict professional tone across all repositories
- **Consistency**: Follow established patterns in existing files
- **Global-readiness**: English-first, international team friendly
- **Markdown Standards**: All markdown files must pass markdownlint validation with configuration in
  `.markdownlint.json`

### Implementation Patterns

When working with this repository:

1. Always check existing files for patterns before creating new ones
2. Maintain consistency with established formatting and structure
3. Follow the four core principles: Consistency, Clarity, Scalability, Global-readiness
4. Validate changes against existing standards before committing

### Documentation Quality and Validation

- Pre-commit hooks enforce: prettier formatting, markdownlint validation, package.json sorting
- Commit messages validated via commitlint with strict conventional commit format
- All markdown files subject to lint-staged processing with `.markdownlint.json` configuration
- Automated formatting via `format-docs.sh` keeps documentation current
- Failed validations block commits until resolved

### Documentation Quality Assurance

This is a documentation repository - quality assurance involves:

- Validating all markdown files pass markdownlint rules
- Ensuring formatting consistency via prettier
- Verifying commit message compliance with conventional commits
- Cross-referencing between documents for accuracy and consistency

The repository serves as documentation and tooling setup rather than containing application code. All changes
must maintain consistency with the established engineering principles and pass all validation checks.
