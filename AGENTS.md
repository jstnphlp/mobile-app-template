# Agent coding instructions

Read `docs/business-context.md`, `docs/architecture.md`, and the relevant `docs/features/<feature>.md` before implementation. Create a spec using `docs/feature-spec.md` if missing.

## Technology and boundaries
- Flutter and Dart; prefer standard Material components. Use Riverpod for shared application state and GoRouter for navigation.
- Keep route registration in `lib/app/router.dart` and reusable infrastructure under `lib/core/`.
- Put each product capability in `lib/features/<feature>/` with separate presentation, data and domain files when needed.
- UI must not contain privileged business authorization or secret keys. Prefer small, composable widgets.
- Follow existing conventions; don't introduce new state managers, routers or database layers without team agreement.
- Do not regenerate the entire project, rename the package, or install packages unless the assigned task calls for it.

## Safe collaboration
- Work only on your assigned task and branch. Do not push directly to main.
- Before editing shared files (router, pubspec, app bootstrap, database schema), coordinate ownership in the issue/PR.
- Don't revert unrelated changes or rewrite other features.
- Declare interfaces/types before coding dependent features. Use mocks while backend contracts are pending.
- Include a PR description listing changes, verification and remaining risks.

## Security/data
- Never commit tokens, service-role credentials, signing keys or real customer data.
- Public Supabase publishable keys may be embedded; security must rely on RLS, not on hiding public keys.
- Any schema or RLS change belongs in a new SQL migration in `supabase/migrations/`, with allow/deny verification.
- Sensitive third-party API calls belong in a secure backend/Edge Function.
- Use explicit validation for input and external payloads.

## Done means
- `dart format --output=none --set-exit-if-changed lib test`
- `flutter analyze`
- `flutter test`
- Verify the changed user journey on Android emulator/device when relevant.
- Explain checks actually run; never claim passing tests that were not executed.
