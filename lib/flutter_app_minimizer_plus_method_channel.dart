import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_app_minimizer_plus_platform_interface.dart';

/// An implementation of [FlutterAppMinimizerPlusPlatform] that uses method channels.
class MethodChannelFlutterAppMinimizerPlus extends FlutterAppMinimizerPlusPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_app_minimizer_plus');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
