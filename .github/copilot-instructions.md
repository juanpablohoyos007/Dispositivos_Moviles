# Copilot / AI Agent Instructions

This repository is a minimal Dart script used for a simple monetization analysis. The guidance below highlights the project's structure, patterns, and exact commands an AI agent should use when proposing edits.

1) Big picture
- Single-file Dart script: `main.dart` contains the entire program (data, analysis function `analizarRentabilidad`, and `main()` runner).
- Purpose: compute simple monetization recommendations based on a list of platform maps (`List<Map<String, dynamic>>`).
- Keep changes small and localized: most edits will touch only `main.dart` unless you explicitly add a package (`pubspec.yaml`).

2) How to run and test (discoverable in this repo)
- Run the script locally: `dart run main.dart` or `dart main.dart` from the repo root.
- If you add dependencies, create `pubspec.yaml` and run `dart pub get` before running.

3) Project-specific code patterns
- Data structures: platform records are plain Dart maps with mixed types: `Map<String, dynamic>` and collections like `List<Map<String, dynamic>>`.
- Return types: helper function `analizarRentabilidad` returns `Map<String, String>` (status by platform). Keep signatures explicit when possible.
- I/O: uses `print()` for all console output. Preserve or extend `print` usage when adding examples or debug output.
- Language: comments and strings are Spanish — preserve comment language and user-facing messages unless you intend to translate the whole repository.

4) Editing rules for AI agents
- Minimal diffs: prefer focused changes inside `main.dart`. If logic becomes non-trivial, add a `lib/` or `bin/` structure and include `pubspec.yaml`.
- Don't introduce new external dependencies without adding `pubspec.yaml` and `dart pub get` instructions.
- Keep function names and public symbols in Spanish unless converting the whole codebase.

5) Examples to reference when making edits
- Data input example (from `main.dart`):

  List<Map<String, dynamic>> datosPlataformas = [
    {'nombre': 'Android', 'gastoPromedio': 8.50, 'recaudacion2025': 45000},
    {'nombre': 'iOS', 'gastoPromedio': 12.75, 'recaudacion2025': 89000},
  ];

- Analysis function: `analizarRentabilidad(List<Map<String, dynamic>> plataformas)` — use this signature pattern for similar helpers.

6) When to request human review
- Any change that alters output text (console strings), numeric thresholds (e.g., `if (gasto > 10)`), or input schema (keys in platform maps) should request a quick human review.

7) Additional notes
- There are no tests or CI configured. If adding tests, include `pubspec.yaml` and a simple `test/` folder with `dart test` instructions.
- Keep PRs small and descriptive: explain data schema changes and any threshold rationale.

If any section is unclear or you want instructions in English instead of Spanish, tell me which parts to update.
