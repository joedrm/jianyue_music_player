import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

abstract class Repository {
  bool? get isDarkMode;

  LanguageCode get languageCode;

  Stream<bool> get onConnectivityChanged;

  Future<bool> saveIsDarkMode(bool isDarkMode);

  Future<bool> saveLanguageCode(LanguageCode languageCode);

}
