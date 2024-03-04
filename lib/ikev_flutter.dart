
import 'ikev_flutter_platform_interface.dart';

class IkevFlutter {
  Future<String?> getPlatformVersion() {
    return IkevFlutterPlatform.instance.getPlatformVersion();
  }
}
