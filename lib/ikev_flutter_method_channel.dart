import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'ikev_flutter_platform_interface.dart';

/// An implementation of [IkevFlutterPlatform] that uses method channels.
class MethodChannelIkevFlutter extends IkevFlutterPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('ikev_flutter');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
