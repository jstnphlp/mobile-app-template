# Collaboration workflow

1. Pick a GitHub Issue, assign exactly one implementer and define acceptance criteria.
2. Branch from current `main` as `feat/<short-name>` or `fix/<short-name>`.
3. Use the relevant feature spec and `AGENTS.md` to instruct your agent. Agree on contracts first.
4. Keep changes scoped. Only one PR at a time should own shared routing, dependencies, or database migrations unless coordinated.
5. Run format, analyzer, unit/widget tests and device smoke testing as applicable.
6. Submit a small PR using the template. Obtain teammate review and passing CI before squash-merge.
7. Sync with main after merges. An integration owner keeps main demo-ready.

If native scaffolding or a lockfile changes, commit and review it with the change. Never commit credentials. Freeze features before final submission to allow testing and demo rehearsal.
