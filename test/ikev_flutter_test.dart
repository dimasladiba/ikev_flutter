import 'package:flutter_test/flutter_test.dart';
import 'package:ikev_flutter/ikev_flutter.dart';
import 'package:ikev_flutter/ikev_flutter_platform_interface.dart';
import 'package:ikev_flutter/ikev_flutter_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockIkevFlutterPlatform
    with MockPlatformInterfaceMixin
    implements IkevFlutterPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final IkevFlutterPlatform initialPlatform = IkevFlutterPlatform.instance;

  test('$MethodChannelIkevFlutter is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelIkevFlutter>());
  });

  test('getPlatformVersion', () async {
    IkevFlutter ikevFlutterPlugin = IkevFlutter();
    MockIkevFlutterPlatform fakePlatform = MockIkevFlutterPlatform();
    IkevFlutterPlatform.instance = fakePlatform;

    expect(await ikevFlutterPlugin.getPlatformVersion(), '42');
  });
}
