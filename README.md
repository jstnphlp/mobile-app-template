# Mobile App Template

A Flutter-first, agent-friendly starter for mobile hackathons, inspired by Prometheus's engineering conventions.

## Stack
Flutter / Dart, Riverpod, GoRouter, optional Supabase, GitHub Actions. The starter works without Supabase credentials in demo mode.

## First-time setup
1. Install [Flutter](https://docs.flutter.dev/get-started/install) (stable channel) and Android Studio / Android SDK or Xcode on macOS.
2. Clone this repository, then generate native platform scaffolding:
   ```bash
   flutter create --platforms=android,ios --project-name mobile_app_template .
   flutter pub get
   flutter analyze
   flutter test
   flutter run
   ```
3. Check `flutter doctor -v`. For Android install a device/emulator. iOS builds require macOS and Xcode.
4. Optional Supabase: supply `--dart-define=SUPABASE_URL=https://YOUR_PROJECT.supabase.co --dart-define=SUPABASE_ANON_KEY=YOUR_PUBLISHABLE_KEY` to `flutter run`. Only use a public/publishable key; never embed the service-role key or other secrets.

**Note:** Generated `android/`, `ios/`, and other Flutter platform files are not committed here yet. Generate them before the first real mobile release, review platform identifiers/signing, and commit the generated platform folders to the repository. CI generates temporary platform scaffolding to validate this starter.

## Commands
```bash
flutter pub get
dart format --output=none --set-exit-if-changed lib test
flutter analyze
flutter test
flutter create --platforms=android,ios --project-name mobile_app_template .
flutter build apk --debug
```

## Team workflow
- Read [AGENTS.md](AGENTS.md), [CONTRIBUTING.md](CONTRIBUTING.md), and [docs/architecture.md](docs/architecture.md).
- Write one feature spec from [docs/feature-spec.md](docs/feature-spec.md) per independent feature.
- Create a small task/issue, assign one owner, work in a branch and open a PR.
- Agree on data contracts and routes before parallel agent work. Keep `main` demo-ready.
- Database schema changes live in `supabase/migrations/`. Apply to your own development database before sharing; do not manually edit generated types.
- See [docs/hackathon-checklist.md](docs/hackathon-checklist.md) for release preparation.

## Layout
```text
lib/
  app/                 router and shell
  core/                environment and infrastructure
  features/            product-owned screens and logic
  main.dart            app initialization
test/                  smoke/widget tests
docs/                  shared context, specs and playbooks
supabase/migrations/   schema migrations (add when required)
.github/workflows/     PR checks
```

## What is deliberately not included
No prebuilt SaaS roles, organization/customer tables, billing, server-side Next.js code, or premature backend abstraction. Add authentication, database schema, and platform plugins only when the hackathon idea requires them.
