import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

class SGScreenUtil {
  static void initScreenUtil(BuildContext context) {
    setDesignWHD(DesignSizeConstants.designWidth, DesignSizeConstants.designHeight);
  }

  ///实际获取的是原尺寸，没有按屏幕百分百计算
  static double w(double width) {
    return ScreenUtil().getWidth(width);
  }

  static double h(double height) {
    return ScreenUtil().getHeight(height);
  }


  ///获取的尺寸是根据屏幕百分百计算出来的
  static double percentW(double width) {
    return ScreenUtil.getInstance().getWidth(width);
  }

  static double percentH(double height) {
    return ScreenUtil.getInstance().getHeight(height);
  }

  static double percentS(double fontSize) {
    return ScreenUtil.getInstance().getSp(fontSize);
  }

  static double s(double fontSize) {
    return ScreenUtil().getSp(fontSize);
  }

  static double SW(){
    return ScreenUtil().screenWidth;
  }

  static double SH(){
    return ScreenUtil().screenHeight;
  }

  static double appBarHeight(){
    return ScreenUtil().statusBarHeight;
  }

  //PIXELS
  static Size size(BuildContext context) => MediaQuery.of(context).size;

  static double width(BuildContext context) => size(context).width;

  static double height(BuildContext context) => size(context).height;
}
