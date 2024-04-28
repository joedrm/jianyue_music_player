class ServerRequestResponseConstants {
  const ServerRequestResponseConstants._();

  static const basicAuthorization = 'Authorization';
  static const jwtAuthorization = 'JWT-Authorization';
  static const userAgentKey = 'User-Agent';
  static const bearer = 'Token mobile:';

  /// language code
  static const en = 'EN';
  static const ja = 'JA';
  static const zh = "ZH";

  /// gender
  static const male = 0;
  static const female = 1;
  static const other = 2;
  static const unknown = -1;
}
