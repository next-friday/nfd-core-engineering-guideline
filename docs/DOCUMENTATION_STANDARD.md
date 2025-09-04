# Documentation Standard — Next Friday

This document defines the standards for writing, organizing, and maintaining documentation across Next Friday.  
The goal is to ensure that all documentation is clear, consistent, up to date, and accessible to all teams globally.

---

## Purpose

- Provide a unified standard for technical and process documentation.
- Ensure readability and clarity for both internal and external audiences.
- Establish rules for ownership, review, and updates.

---

## Scope

This standard applies to:

- Engineering documentation (design docs, ADRs, API guides, code style, runbooks).
- Operational documentation (monitoring, incident response, on-call handbooks).
- Product and delivery documentation (requirements, specifications, release notes).
- Collaboration documentation (knowledge bases, wiki pages, policies).

---

## Structure and Format

- **Language**: English is the default for all official documents.
- **File format**: Markdown (`.md`) for version-controlled repositories.
- **Headings**: Use hierarchical headings (`#`, `##`, `###`) consistently.
- **Sections**: Each document should include at minimum:
  - Title
  - Purpose
  - Scope
  - Rules/Guidelines
  - Examples (if applicable)
  - References (if applicable)

---

## Naming and Location

- File names must be in UPPERCASE with underscores, e.g., `NAMING_CONVENTION.md`.
- Store all engineering standards in the repository: `nfd-core-engineering-guideline`.
- Place domain-specific docs in the related project repository under `/docs`.

---

## Ownership and Review

- Each document must have an **owner** (team or role) responsible for updates.
- **Review cycle**: minimum once every 6 months, or earlier if major changes occur.
- Changes require pull requests and peer review.

---

## Versioning and History

- Documentation is version-controlled in Git.
- Major updates must include changelog entries.
- Deprecated documents must be clearly marked with a header and link to replacement content.

---

## Accessibility

- All standards must be accessible via the company GitHub organization.
- Sensitive information must not be stored in public repositories.
- Where appropriate, mirror key standards to internal wiki systems for visibility.

---

## References

- [Google Technical Writing Guidelines](https://developers.google.com/tech-writing)
- [Diátaxis Documentation Framework](https://diataxis.fr/)
