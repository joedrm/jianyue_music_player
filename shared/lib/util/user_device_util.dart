import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';

import '../../../shared.dart';
import 'package:universal_platform/universal_platform.dart';

class UserDeviceUtil {
  const UserDeviceUtil._();
  static UserDeviceType deviceType = _getDeviceType();

  static Future<String> getDeviceId() async {
    final deviceInfo = DeviceInfoPlugin();
    if (Platform.isIOS) {
      final iosDeviceInfo = await deviceInfo.iosInfo;

      return iosDeviceInfo.identifierForVendor ?? '';
    } else {
      final androidDeviceInfo = await deviceInfo.androidInfo;

      return androidDeviceInfo.id ?? '';
    }
  }

  static Future<String> getDeviceModelName() async {
    final DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    if (Platform.isIOS) {
      final IosDeviceInfo iosInfo = await deviceInfo.iosInfo;

      return iosInfo.name ?? '';
    } else {
      final AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;

      return '${androidInfo.brand} ${androidInfo.device}';
    }
  }

  static UserDeviceType _getDeviceType() {
    final data = MediaQueryData.fromWindow(WidgetsBinding.instance.window);

    return data.size.shortestSide < DeviceWindowConstants.maxMobileWidthForDeviceType
        ? UserDeviceType.mobile
        : UserDeviceType.tablet;
  }

  static bool get isDesktop => !isWeb && (isWindows || isLinux || isMacOS);

  static bool get isMobile => isAndroid || isIOS;

  static bool get isWeb => UniversalPlatform.isWeb;

  static bool get isWindows => UniversalPlatform.isWindows;

  static bool get isLinux => UniversalPlatform.isLinux;

  static bool get isMacOS => UniversalPlatform.isMacOS;

  static bool get isAndroid => isWeb ? false : UniversalPlatform.isAndroid;

  static bool get isFuchsia => UniversalPlatform.isFuchsia;

  static bool get isIOS => UniversalPlatform.isIOS;

  static bool jumpPlatform() {
    if (isWeb) return false;

    if (UniversalPlatform.isMacOS ||
        UniversalPlatform.isWindows ||
        UniversalPlatform.isFuchsia ||
        UniversalPlatform.isWindows) {
      return true;
    }
    return false;
  }
}
