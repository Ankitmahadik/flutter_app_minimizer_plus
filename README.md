# Flutter App Minimizer Plus

[![Pub Version](https://img.shields.io/pub/v/flutter_app_minimizer_plus?color=blue)](https://pub.dev/packages/flutter_app_minimizer_plus)
[![License: MIT](https://img.shields.io/badge/license-MIT-purple.svg)](https://opensource.org/licenses/MIT)
[![Platform: Android](https://img.shields.io/badge/platform-Android-green.svg)](https://developer.android.com)

A simple and lightweight Flutter plugin to minimize your Android app and move it to the background with just one line of code! Perfect for apps that need to programmatically minimize themselves.

---

## Features

- **Minimize App**: Programmatically minimize the app and move it to the background.
- **Lightweight**: No unnecessary dependencies or bloat.
- **Easy to Use**: Just call a single method to minimize the app.

---

## Installation

Add the following to your `pubspec.yaml` file:

```yaml
dependencies:
  flutter_app_minimizer_plus: ^1.0.0
```

Then, run:

```bash
flutter pub get
```

---

## Usage

### Import the Package

```dart
import 'package:flutter_app_minimizer_plus/flutter_app_minimizer_plus.dart';
```

### Minimize the App

Call the `minimizeApp` method to minimize the app and move it to the background:

```dart
FlutterAppMinimizerPlus.minimizeApp();
```

### Example

Here’s a complete example:

```dart
import 'package:flutter/material.dart';
import 'package:flutter_app_minimizer_plus/flutter_app_minimizer_plus.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter App Minimizer Plus'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              FlutterAppMinimizerPlus.minimizeApp();
            },
            child: Text('Minimize App'),
          ),
        ),
      ),
    );
  }
}
```

---

## Platform Support

| Platform | Support |
|----------|---------|
| Android  | ✅      |
| iOS      | ❌      |

---

## Contributing

Contributions are welcome! If you find a bug or want to suggest a feature, please open an issue or submit a pull request.

1. Fork the repository.
2. Create a new branch (`git checkout -b feature/your-feature`).
3. Commit your changes (`git commit -m 'Add some feature'`).
4. Push to the branch (`git push origin feature/your-feature`).
5. Open a pull request.

---

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

## Support

If you find this plugin useful, consider giving it a ⭐️ on [GitHub](https://github.com/Ankitmahadik/flutter_app_minimizer_plus) or buying me a coffee ☕️.

[![Buy Me A Coffee](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png)](https://buymeacoffee.com/ankitmahadik)

---

## Author

[Ankit Mahadik](https://github.com/Ankitmahadik)