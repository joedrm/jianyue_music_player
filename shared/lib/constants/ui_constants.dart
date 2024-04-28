import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UiConstants {
  const UiConstants._();

  /// shimmer
  static const shimmerItemCount = 20;

  /// material app
  static const materialAppTitle = 'My App';
  static const taskMenuMaterialAppColor = Color.fromARGB(255, 153, 154, 251);

  /// orientation
  static const mobileOrientation = [
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ];

  static const tabletOrientation = [
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ];

  /// status bar color
  static const systemUiOverlay = SystemUiOverlayStyle(
    // statusBarBrightness: Brightness.light,
    systemNavigationBarColor: Color(0xffFFFFFF),
    systemNavigationBarDividerColor: Color(0xffFFFFFF),
    statusBarColor: Colors.transparent,
    systemNavigationBarIconBrightness: Brightness.dark,
    statusBarIconBrightness: Brightness.dark,
    statusBarBrightness: Brightness.dark,
    // statusBarColor: Color.fromARGB(255, 153, 154, 251),
  );

  static const textFieldTextStyleHeight = 1.3;
}
