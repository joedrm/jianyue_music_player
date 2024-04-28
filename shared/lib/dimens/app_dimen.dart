import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared/shared.dart';

class AppDimen {
  AppDimen._({
    required this.screenWidth,
    required this.screenHeight,
    required this.devicePixelRatio,
    required this.screenType,
  });

  static late AppDimen current;

  final double screenWidth;
  final double screenHeight;
  final double devicePixelRatio;
  final ScreenType screenType;

  static AppDimen of(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final devicePixelRatio = MediaQuery.of(context).devicePixelRatio;

    // Log.e("screenWidth = $screenWidth; screenHeight = $screenHeight");

    final screen = AppDimen._(
      screenWidth: screenWidth,
      screenHeight: screenHeight,
      devicePixelRatio: devicePixelRatio,
      screenType: _getScreenType(screenWidth),
    );

    current = screen;

    // Log.e("AppDimen of 2");

    return current;
  }

  double responsiveDimens({
    required double mobile,
    double? tablet,
    double? ultraTablet,
  }) {
    switch (screenType) {
      case ScreenType.mobile:
        return mobile.w;
      case ScreenType.tablet:
        return tablet?.w ??
            ((mobile * DeviceWindowConstants.maxMobileWidth) /
                DeviceWindowConstants.designDeviceWidth);
      case ScreenType.ultraTablet:
        return ultraTablet?.w ??
            ((mobile * DeviceWindowConstants.maxMobileWidth) /
                DeviceWindowConstants.designDeviceWidth);
    }
  }

  int responsiveIntValue({
    required int mobile,
    int? tablet,
    int? ultraTablet,
  }) {
    switch (screenType) {
      case ScreenType.mobile:
        return mobile;
      case ScreenType.tablet:
        return tablet ?? mobile;
      case ScreenType.ultraTablet:
        return ultraTablet ?? mobile;
    }
  }

  static ScreenType _getScreenType(double screenWidth) {
    if (screenWidth <= DeviceWindowConstants.maxMobileWidth) {
      return ScreenType.mobile;
    } else if (screenWidth <= DeviceWindowConstants.maxTabletWidth) {
      return ScreenType.tablet;
    } else {
      return ScreenType.ultraTablet;
    }
  }
}

extension ResponsiveDoubleExtension on double {
  double responsive({
    double? tablet,
    double? ultraTablet,
  }) {
    return AppDimen.current.responsiveDimens(
      mobile: this,
      tablet: tablet,
      ultraTablet: ultraTablet,
    );
  }
}

enum ScreenType {
  mobile,
  tablet,
  ultraTablet,
}
