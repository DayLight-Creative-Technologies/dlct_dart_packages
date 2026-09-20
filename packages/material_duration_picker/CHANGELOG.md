## 0.1.1+dlct.1 (DayLight Creative Technologies fork)

### Migrated to package:material_ui

- Migrated from `package:flutter/material.dart` to the standalone
  `package:material_ui` via the official
  `dart fix --apply --code=migrate_design_widgets` (8 fixes in 7 files), then
  `dart fix --code=directives_ordering` to restore import ordering.

**Why.** Flutter 3.47 decoupled Material from the framework into
`package:material_ui`, which REDEFINES the material layer — its `ThemeData`,
`TextTheme`, `InputDecoration` and `ThemeExtension` are different classes from
the `package:flutter/material.dart` ones.

SocialScoreKeeper migrated on 2026-09-20, so its widget tree no longer contains
any `package:flutter/material.dart` `Theme` ancestor. A package left on the old
import therefore resolves `Theme.of(context)` to Flutter's
`_kFallbackTheme` = `ThemeData.fallback()` = **`ThemeData.light()`** — while the
host app is forced DARK. That is a silent, compile-clean visual regression: no
error, no crash, just light-themed widgets in a dark app (and, for
`pin_code_fields`, a light iOS keyboard on OTP entry because
`keyboardAppearance` defaults to `Theme.of(context).brightness`).

This package is rendered inside SSK's tree, so it moves with the app.

**Return to pub.dev when** upstream ships a material_ui release. There is no
DLCT-original behaviour in this change — it is the mechanical import migration
only, and the pre-existing fork divergence is untouched.

## 0.1.1

- **FIX**: Flutter API compatibility fixes for Flutter 3.35.1 / Dart 3.9.0
  - Fixed InputDecorationTheme -> InputDecorationThemeData? compatibility
  - Updated method signatures to match current Flutter API
  - Fixed nullable access patterns for InputDecorationThemeData

## 0.1.0

> Note: This release has breaking changes.

 - **REFACTOR**: Adapt restoration labels. ([6d0734e5](https://github.com/Oberhauser-Dev/dart_packages/commit/6d0734e52bca2dc55184f8b93371e43abac56d45))
 - **FIX**: Highlight minutes by default when DurationPickerMode does not involve hours ([#37](https://github.com/Oberhauser-Dev/dart_packages/issues/37)). ([e2d80bd3](https://github.com/Oberhauser-Dev/dart_packages/commit/e2d80bd326ccb4beebe9177e3b98618de36f87cb))
 - **FEAT**: Apply changes of Flutter (time_picker at flutter/flutter#a69ba5da). ([629abb22](https://github.com/Oberhauser-Dev/dart_packages/commit/629abb22f30ffb97c57105a2c371d176f5222601))
 - **BREAKING** **FEAT**: Support all locales with english as fallback (closes [#28](https://github.com/Oberhauser-Dev/dart_packages/issues/28)). ([3e6300ca](https://github.com/Oberhauser-Dev/dart_packages/commit/3e6300ca055d5e71dba02efa95aa6ab29e3c395c))

## 0.0.2+1

 - **FIX**: Parse versions starting with 'v' ([#13](https://github.com/Oberhauser-dev/dart_packages/issues/13)).

## 0.0.2

 - **REFACTOR**: Rename docs to doc.
 - **REFACTOR**: Apply analysis proposals.
 - **FEAT**: Make package compatible with former Dart 3.4.x.
 - **FEAT**: Localizations.
 - **FEAT**: Provide implementation (time_picker at flutter/flutter[#360](https://github.com/Oberhauser-dev/dart_packages/issues/360)e42c).
 - **FEAT**: Initial package material_duration_picker.
 - **DOCS**: Update CHANGELOG.
 - **DOCS**: Add example.

## 0.0.1

* Initial release of material_duration_picker (cf. time_picker at flutter/flutter#360e42c)
