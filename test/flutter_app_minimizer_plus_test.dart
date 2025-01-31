import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_app_minimizer_plus/flutter_app_minimizer_plus.dart';
import 'package:flutter_app_minimizer_plus/flutter_app_minimizer_plus_platform_interface.dart';
import 'package:flutter_app_minimizer_plus/flutter_app_minimizer_plus_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterAppMinimizerPlusPlatform
    with MockPlatformInterfaceMixin
    implements FlutterAppMinimizerPlusPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterAppMinimizerPlusPlatform initialPlatform = FlutterAppMinimizerPlusPlatform.instance;

  test('$MethodChannelFlutterAppMinimizerPlus is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterAppMinimizerPlus>());
  });

  test('getPlatformVersion', () async {
    FlutterAppMinimizerPlus flutterAppMinimizerPlusPlugin = FlutterAppMinimizerPlus();
    MockFlutterAppMinimizerPlusPlatform fakePlatform = MockFlutterAppMinimizerPlusPlatform();
    FlutterAppMinimizerPlusPlatform.instance = fakePlatform;

    expect(await flutterAppMinimizerPlusPlugin.getPlatformVersion(), '42');
  });
}
