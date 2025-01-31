# Changelog

All notable changes to the `flutter_app_minimizer_plus` plugin will be documented in this file.

## [1.0.0] - Initial Release

### Added
- Initial release of the `flutter_app_minimizer_plus` plugin.
- Added `minimizeApp` method to minimize the app and move it to the background on Android.
- Added example app to demonstrate usage.
- Added documentation in the `README.md` file.

### Changed
- N/A

### Fixed
- N/A

---

## [1.0.1] - SDK Constraint Update

### Changed
- Updated Dart SDK constraint in `pubspec.yaml` from `^3.5.1` to `>=3.2.1 <4.0.0` to support a wider range of Dart SDK versions.
- Flutter SDK constraint remains unchanged (`>=3.3.0`).

### Fixed
- N/A

### Added
- N/A

---

## [1.0.2] - Bug Fixes & Compatibility Improvements

### Fixed
- Resolved conflicting `onMethodCall` overloads in `FlutterAppMinimizerPlusPlugin.kt`, preventing Kotlin compilation issues.
- Fixed unresolved reference to `Build` in `FlutterAppMinimizerPlusPlugin.kt` by properly importing `android.os.Build`.

### Changed
- Improved error handling for method calls to ensure stability.
- Updated Kotlin dependencies in `android/build.gradle` for better compatibility.

### Added
- Additional logging for debugging method call errors.
