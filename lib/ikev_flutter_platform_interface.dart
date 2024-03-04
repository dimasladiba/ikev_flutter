import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'ikev_flutter_method_channel.dart';

abstract class IkevFlutterPlatform extends PlatformInterface {
  /// Constructs a IkevFlutterPlatform.
  IkevFlutterPlatform() : super(token: _token);

  static final Object _token = Object();

  static IkevFlutterPlatform _instance = MethodChannelIkevFlutter();

  /// The default instance of [IkevFlutterPlatform] to use.
  ///
  /// Defaults to [MethodChannelIkevFlutter].
  static IkevFlutterPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [IkevFlutterPlatform] when
  /// they register themselves.
  static set instance(IkevFlutterPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
