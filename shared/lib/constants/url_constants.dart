import 'package:shared/constants/env_constants.dart';

import '../../shared.dart';

class UrlConstants {
  const UrlConstants._();

  /// Url
  static const termUrl = 'https://www.chatwork.com/';
  static const lineApiBaseUrl = 'https://api.line.me/';
  static const twitterApiBaseUrl = 'https://api.twitter.com/';
  static const goongApiBaseUrl = 'https://rsapi.goong.io/';
  static const firebaseStorageBaseUrl = 'https://firebasestorage.googleapis.com/';
  static const randomUserBaseUrl = 'https://randomuser.me/api/';

  static const mockApiBaseUrl = 'https://api.jsonbin.io/';

  /// Path
  static const remoteConfigPath = '/config/RemoteConfig.json';
  static const settingsPath = '/mypage/settings';

  static String get appApiBaseUrl {
    switch (EnvConstants.flavor) {
      case Flavor.develop:
        return 'https://central.dev.goqomo.com/api';
      case Flavor.qa:
        return 'https://sr.sengled.com/api';
      case Flavor.staging:
        return 'https://staging.sr.sengled.com/api';
      case Flavor.production:
        return 'https://sr.sengled.com/api';
    }
  }
}
