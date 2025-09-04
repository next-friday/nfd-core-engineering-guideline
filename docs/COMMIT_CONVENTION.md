# Commit Message Convention — Next Friday

This document defines the commit message rules enforced by **Commitlint** across all Next Friday repositories.  
We follow **Conventional Commits v1.0.0** with additional restrictions to keep messages short, consistent, and machine-parseable.

> Config reference (for maintainers): `@commitlint/config-conventional` with custom rules.

---

## Rules

- **type**: required; must be **lowercase**.
- **scope**: required; must be **lowercase**.
- **subject**: required; maximum **50 characters**. (Case not enforced; use imperative mood; no trailing punctuation.)
- **body**: **must be empty**.
- **footer**: **must be empty**.
- **allowed types**: `build`, `chore`, `ci`, `docs`, `feat`, `fix`, `perf`, `refactor`, `revert`, `style`, `test`.

---

## Format

```text
<type>(<scope>): <subject>
```

- `<type>`: one of the allowed types.
- `<scope>`: module/feature/context (e.g., `auth`, `order`, `officialsite`, `infra`).
- `<subject>`: short imperative description, ≤ 50 chars, no trailing period.

---

## Examples

### Valid

```text
feat(order): add payment API integration
fix(auth): handle token refresh on 401
docs(readme): add setup instructions
refactor(core): simplify service dependencies
style(ui): align button spacing
test(api): add contract tests for orders
```

### Invalid

```text
fix: missing scope                         # scope is required
FEAT(order): add new endpoint              # type must be lowercase
chore(core): this subject line is way too long and exceeds the allowed fifty characters
feat(order): add endpoint.

body text here                             # body must be empty
```

---

## Rationale

- Enforcing **type/scope/subject** improves readability and changelog generation.
- Limiting subject length (≤ 50) keeps commit history scannable.
- Empty **body/footer** avoids noise and enforces concise messages (issues/notes should live in PR description).

---

## Reference

- [Conventional Commits v1.0.0](https://www.conventionalcommits.org/en/v1.0.0)
