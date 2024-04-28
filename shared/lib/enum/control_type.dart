enum ControlType {
  Zone,
  Group,
  Device,
}


extension ControlTypeExtension on ControlType {
  String get typeName {
    return toString().split(".").last;
  }

  String get title {
    return ["区域控制", "分组控制", "设备控制"][index];
  }

  int get value {
    return [0, 1, 2][index];
  }

  String get nameLowerCase {
    return typeName.toLowerCase();
  }
}
