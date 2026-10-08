# Architecture

```text
Flutter routes/widgets -> feature services/state -> typed repositories/adapters -> Supabase or external services
```

- `lib/app/`: GoRouter registration, global app shell and theme.
- `lib/features/<feature>/`: feature-owned presentation, state, domain and data access as needed.
- `lib/core/`: cross-feature infrastructure (configuration, API clients).
- `test/`: unit and widget tests.
- `supabase/migrations/`: additive database schema changes.
- No mandatory repository pattern for trivial widgets; add layers only when needed.
- RLS is the authoritative boundary for direct mobile Supabase calls. UI guards are presentation only.
- Privileged operations run behind validated backend endpoints, not in Flutter client code.
- Avoid treating generated web code, Next.js Server Actions, cookies, or shadcn UI as portable mobile code.
