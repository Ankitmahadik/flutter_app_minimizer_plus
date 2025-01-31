import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_app_minimizer_plus_method_channel.dart';

abstract class FlutterAppMinimizerPlusPlatform extends PlatformInterface {
  /// Constructs a FlutterAppMinimizerPlusPlatform.
  FlutterAppMinimizerPlusPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterAppMinimizerPlusPlatform _instance = MethodChannelFlutterAppMinimizerPlus();

  /// The default instance of [FlutterAppMinimizerPlusPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterAppMinimizerPlus].
  static FlutterAppMinimizerPlusPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterAppMinimizerPlusPlatform] when
  /// they register themselves.
  static set instance(FlutterAppMinimizerPlusPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
