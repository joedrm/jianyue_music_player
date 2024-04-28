enum DeviceType {
  /// 灯
  LAMP,

  /// PR人感
  HUMAN_SENSOR,
  CONTROL,
  PANEL,
  LIGHT_SENSOR,
  DTU,
  ELECTRIC,
  RGB_W_BELT,
  MW_SENSOR,
  AMMETER,
  SUPER_INST_AMMETER,

  /// 超仪电表
  HUB,
  SWITCH,

  /// 通用传感器
  COMMON_SENSOR,

  /// 通断控制器
  ON_OFF_CONTROLLER,

  /// 0～10v控制器
  CONTROL_0_10V,

  /// 门磁传感器
  DOOR_SENSOR,

  /// 空调面板
  AIR_COND_PANEL,

  /// 信号采集设备
  SIGNAL_CAPTURE,

  /// t8灯管
  T8,

  /// 复合传感器（迈瑞）
  COMPLEX_SENSOR,
  UNKNOWN,
}