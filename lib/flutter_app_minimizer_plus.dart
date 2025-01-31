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

  Future<String?> getPlatformVersion() async {
    try {
      // Invoke the platform-specific method to get the platform version
      final String? version = await _channel.invokeMethod('getPlatformVersion');
      return version;
    } catch (e) {
      // Handle any errors (e.g., platform not supported)
      if (kDebugMode) {
        print('Failed to get platform version: $e');
      }
      return null;
    }
  }
}
