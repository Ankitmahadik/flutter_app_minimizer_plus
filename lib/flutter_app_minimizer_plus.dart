import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_app_minimizer_plus_platform_interface.dart';

class FlutterAppMinimizerPlus {
  static const MethodChannel _channel = MethodChannel(
    'flutter_app_minimizer_plus',
  );

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
      return FlutterAppMinimizerPlusPlatform.instance.getPlatformVersion();
    } catch (e) {
      // Handle any errors (e.g., platform not supported)
      if (kDebugMode) {
        print('Failed to get platform version: $e');
      }
      return null;
    }
  }
}
