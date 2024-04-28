import 'package:shared/shared.dart';

class FixValueUtil {
  /// 最大最小值限定
  static int limitValue(int? value, int max, int min) {
    if (value == null) {
      return min;
    }
    if (value < min) {
      value = min;
    }
    if (value > max) {
      value = max;
    }
    return value;
  }

  static int fixBrightness(int value) => limitValue(
      value,
      DeviceParamConstants.lightnessMaxValue,
      DeviceParamConstants.lightnessMinValue);

  static int fixColorTemperature(int value) => limitValue(
      value,
      DeviceParamConstants.temperatureMaxValue,
      DeviceParamConstants.temperatureMinValue);

  static int fixRGBValue(int value) => limitValue(value,
      DeviceParamConstants.rgbMaxValue, DeviceParamConstants.rgbMinValue);

  static int fixActionStayDurationValue(int brightness) => limitValue(
      brightness,
      StrategyParamConstants.maxDynamicActionStayDuration,
      StrategyParamConstants.minDynamicActionStayDuration);

  static int fixBreathStayDurationValue(int value) => limitValue(
      value,
      StrategyParamConstants.maxBreathActionStayDuration,
      StrategyParamConstants.minBreathActionStayDuration);

  static int fixActionAnimateDurationValue(int value) => limitValue(
      value,
      StrategyParamConstants.maxDynamicActionAnimateDuration,
      StrategyParamConstants.minDynamicActionAnimateDuration);

  static int fixBreathActionAnimateDurationValue(int value) => limitValue(
      value,
      StrategyParamConstants.maxBreathActionAnimateDuration,
      StrategyParamConstants.minBreathActionAnimateDuration);

  static int fixValueWithControlType(ControlParamType type, int value) {
    switch (type) {
      case ControlParamType.LIGHTNESS:
      case ControlParamType.CURTAIN_OPEN_PERCENT:
        value = fixBrightness(value);
        break;
      case ControlParamType.TEMPERATURE:
        value = fixColorTemperature(value);
        break;
      case ControlParamType.RGB:
        value = fixRGBValue(value);
        break;
      case ControlParamType.GRADIENT:
        // TODO: Handle this case.
        break;
    }
    return value;
  }
}
