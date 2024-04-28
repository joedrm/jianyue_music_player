enum ScanType { all, gateway, device }

// A0:扫描设备；A1:获取网络配置信息；A2:组网；A3:获取组信息；A4:创建新组
enum SmartCMDType {
  s02,
  sa0,
  sa1,
  sa2,
  sa3,
  sa4,
  sa5,
  s12,
  s0e,
  sa6,
  sa7,
  sa8,
  sa9,
  saa
}

extension PortCMDTypeExt on SmartCMDType {
  String get name {
    String nameStr = "";
    switch (this) {
      case SmartCMDType.s02:
        nameStr = "离网";
        break;
      case SmartCMDType.sa0:
        nameStr = "扫描设备";
        break;
      case SmartCMDType.sa1:
        nameStr = "获取网络配置信息";
        break;
      case SmartCMDType.sa2:
        nameStr = "组网";
        break;
      case SmartCMDType.sa3:
        nameStr = "获取组信息";
        break;
      case SmartCMDType.sa4:
        nameStr = "创建新组";
        break;
      case SmartCMDType.sa5:
        nameStr = "删除分组";
        break;
      case SmartCMDType.s12:
        nameStr = "开关灯";
        break;
      case SmartCMDType.s0e:
        nameStr = "闪烁";
        break;
      case SmartCMDType.sa6:
        nameStr = "修改网关名字";
        break;
      case SmartCMDType.sa7:
        nameStr = "获取组设备数";
        break;
      case SmartCMDType.sa8:
        nameStr = "网关全开关";
        break;
      case SmartCMDType.sa9:
        nameStr = "分组全开关";
        break;
      case SmartCMDType.saa:
        nameStr = "分组全开关";
        break;
      default:
        nameStr = "未知";
        break;
    }
    String typeName = toString().split(".").last;
    return "${typeName.substring(1, typeName.length)}:$nameStr";
  }
}

enum DongleCMDType { d00, d01, d02, d03, d04, d05, d06, d07 }

extension DongleCMDTypeExt on DongleCMDType {
  String get name {
    String nameStr = "";
    switch (this) {
      case DongleCMDType.d00:
        nameStr = "初始化";
        break;
      case DongleCMDType.d01:
        nameStr = "短地址发送模式";
        break;
      case DongleCMDType.d02:
        nameStr = "Mac地址发送模式";
        break;
      case DongleCMDType.d03:
        nameStr = "切换信道";
        break;
      case DongleCMDType.d04:
        nameStr = "创建网络并修改发射功率";
        break;
      case DongleCMDType.d05:
        nameStr = "查询Dongle网络信息、发射功率";
        break;
      case DongleCMDType.d06:
        nameStr = "扫描网络";
        break;
      case DongleCMDType.d07:
        nameStr = "修改发射功率";
        break;
      default:
        nameStr = "";
    }
    String typeName = toString().split(".").last;
    return "${typeName.substring(1, typeName.length)}:$nameStr";
  }
}
