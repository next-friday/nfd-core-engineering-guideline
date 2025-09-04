# Branching Strategy — Next Friday

This document defines the standard Git branching strategy for all projects under Next Friday Co., Ltd.  
The objective is to maintain clarity, consistency, and safe promotion of code through multiple environments.

---

## Goals

- Ensure stable and predictable release management.
- Provide isolation for feature development, testing, and production.
- Enforce consistency across all repositories.
- Minimize merge conflicts and deployment risks.

---

## Branch Types

### 1. Main Branches

- **main**
  - Production-ready branch.
  - Protected: requires pull request, review, and CI/CD checks before merge.
  - No direct commits.

- **sit** (System Integration Testing)
  - Staging branch used for client/user acceptance testing.
  - Protected: same rules as `main`.

- **dev**
  - Development integration branch.
  - Aggregates feature branches before promotion to `sit`.
  - Protected: requires successful checks before merge.

### 2. Short-lived Branches

- **feature/**
  - For new features.
  - Naming: `feature/<scope>` e.g., `feature/order-api`.

- **fix/**
  - For bug fixes.
  - Naming: `fix/<scope>` e.g., `fix/payment-validation`.

- **hotfix/**
  - For urgent fixes applied directly to `main`.
  - Naming: `hotfix/<scope>` e.g., `hotfix/login-crash`.

- **chore/**
  - For maintenance tasks, refactoring, or non-feature work.
  - Naming: `chore/<scope>` e.g., `chore/update-dependencies`.

---

## Workflow

1. **Start development**
   - Create a branch from `dev` (e.g., `feature/order-api`).

2. **Merge to dev**
   - When feature/fix is complete, open a pull request into `dev`.
   - Requires code review and passing tests.

3. **Promote to sit**
   - Periodically merge `dev` → `sit` for integrated testing.
   - Only approved features and fixes should be included.

4. **Release to production**
   - Merge `sit` → `main` after successful SIT/UAT.
   - Tag the release (semantic versioning recommended).

5. **Hotfix process**
   - Create a branch from `main` (e.g., `hotfix/login-crash`).
   - After validation, merge back to both `main` and `dev`.

---

## Protection Rules

- All long-lived branches (`main`, `sit`, `dev`) must be protected.
- Require pull requests and at least one reviewer approval.
- Require CI/CD checks (build, lint, test) to pass before merge.
- Disallow force-push and direct commits.

---

## Example Naming Patterns

- `feature/payment-service`
- `fix/auth-session-timeout`
- `hotfix/dashboard-crash`
- `chore/update-dependencies`

---

## References

- GitHub Protected Branches: <https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches>
- Git Flow (adapted): <https://nvie.com/posts/a-successful-git-branching-model/>
