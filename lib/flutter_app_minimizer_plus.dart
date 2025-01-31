import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class FlutterAppMinimizerPlus {
  static const MethodChannel _channel =
      MethodChannel('flutter_app_minimizer_plus');

  /// Minimizes the app and moves it to the background.
  static Future<void> minimizeApp() async {
    try {
      await _channel.invokeMethod('minimizeApp');
    } on PlatformException catch (e) {
      if (kDebugMode) {
        print("Failed to minimize app: ${e.message}");
      }
    }
  }
}
