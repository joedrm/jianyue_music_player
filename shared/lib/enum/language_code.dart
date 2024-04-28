import 'package:shared/shared.dart';

enum LanguageCode {
  en(
      localeCode: LocaleConstants.en,
      serverValue: ServerRequestResponseConstants.en),

  zh(
    localeCode: LocaleConstants.zh,
    serverValue: ServerRequestResponseConstants.zh);

  const LanguageCode({
    required this.localeCode,
    required this.serverValue,
  });

  final String localeCode;
  final String serverValue;

  static LanguageCode get defaultValue => en;
}
