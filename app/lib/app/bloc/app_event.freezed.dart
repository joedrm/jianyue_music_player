// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppInitEvent {}

/// @nodoc
abstract class $AppInitEventCopyWith<$Res> {
  factory $AppInitEventCopyWith(
          AppInitEvent value, $Res Function(AppInitEvent) then) =
      _$AppInitEventCopyWithImpl<$Res, AppInitEvent>;
}

/// @nodoc
class _$AppInitEventCopyWithImpl<$Res, $Val extends AppInitEvent>
    implements $AppInitEventCopyWith<$Res> {
  _$AppInitEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AppInitEventCopyWith<$Res> {
  factory _$$_AppInitEventCopyWith(
          _$_AppInitEvent value, $Res Function(_$_AppInitEvent) then) =
      __$$_AppInitEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AppInitEventCopyWithImpl<$Res>
    extends _$AppInitEventCopyWithImpl<$Res, _$_AppInitEvent>
    implements _$$_AppInitEventCopyWith<$Res> {
  __$$_AppInitEventCopyWithImpl(
      _$_AppInitEvent _value, $Res Function(_$_AppInitEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AppInitEvent implements _AppInitEvent {
  const _$_AppInitEvent();

  @override
  String toString() {
    return 'AppInitEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AppInitEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _AppInitEvent implements AppInitEvent {
  const factory _AppInitEvent() = _$_AppInitEvent;
}

/// @nodoc
mixin _$IsLoggedInStatusChanged {
  bool get isLoggedIn => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IsLoggedInStatusChangedCopyWith<IsLoggedInStatusChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IsLoggedInStatusChangedCopyWith<$Res> {
  factory $IsLoggedInStatusChangedCopyWith(IsLoggedInStatusChanged value,
          $Res Function(IsLoggedInStatusChanged) then) =
      _$IsLoggedInStatusChangedCopyWithImpl<$Res, IsLoggedInStatusChanged>;
  @useResult
  $Res call({bool isLoggedIn});
}

/// @nodoc
class _$IsLoggedInStatusChangedCopyWithImpl<$Res,
        $Val extends IsLoggedInStatusChanged>
    implements $IsLoggedInStatusChangedCopyWith<$Res> {
  _$IsLoggedInStatusChangedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoggedIn = null,
  }) {
    return _then(_value.copyWith(
      isLoggedIn: null == isLoggedIn
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IsLoggedInStatusChangedCopyWith<$Res>
    implements $IsLoggedInStatusChangedCopyWith<$Res> {
  factory _$$_IsLoggedInStatusChangedCopyWith(_$_IsLoggedInStatusChanged value,
          $Res Function(_$_IsLoggedInStatusChanged) then) =
      __$$_IsLoggedInStatusChangedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoggedIn});
}

/// @nodoc
class __$$_IsLoggedInStatusChangedCopyWithImpl<$Res>
    extends _$IsLoggedInStatusChangedCopyWithImpl<$Res,
        _$_IsLoggedInStatusChanged>
    implements _$$_IsLoggedInStatusChangedCopyWith<$Res> {
  __$$_IsLoggedInStatusChangedCopyWithImpl(_$_IsLoggedInStatusChanged _value,
      $Res Function(_$_IsLoggedInStatusChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoggedIn = null,
  }) {
    return _then(_$_IsLoggedInStatusChanged(
      isLoggedIn: null == isLoggedIn
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_IsLoggedInStatusChanged implements _IsLoggedInStatusChanged {
  const _$_IsLoggedInStatusChanged({required this.isLoggedIn});

  @override
  final bool isLoggedIn;

  @override
  String toString() {
    return 'IsLoggedInStatusChanged(isLoggedIn: $isLoggedIn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IsLoggedInStatusChanged &&
            (identical(other.isLoggedIn, isLoggedIn) ||
                other.isLoggedIn == isLoggedIn));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoggedIn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IsLoggedInStatusChangedCopyWith<_$_IsLoggedInStatusChanged>
      get copyWith =>
          __$$_IsLoggedInStatusChangedCopyWithImpl<_$_IsLoggedInStatusChanged>(
              this, _$identity);
}

abstract class _IsLoggedInStatusChanged implements IsLoggedInStatusChanged {
  const factory _IsLoggedInStatusChanged({required final bool isLoggedIn}) =
      _$_IsLoggedInStatusChanged;

  @override
  bool get isLoggedIn;
  @override
  @JsonKey(ignore: true)
  _$$_IsLoggedInStatusChangedCopyWith<_$_IsLoggedInStatusChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppThemeChanged {
  bool get isDarkTheme => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppThemeChangedCopyWith<AppThemeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppThemeChangedCopyWith<$Res> {
  factory $AppThemeChangedCopyWith(
          AppThemeChanged value, $Res Function(AppThemeChanged) then) =
      _$AppThemeChangedCopyWithImpl<$Res, AppThemeChanged>;
  @useResult
  $Res call({bool isDarkTheme});
}

/// @nodoc
class _$AppThemeChangedCopyWithImpl<$Res, $Val extends AppThemeChanged>
    implements $AppThemeChangedCopyWith<$Res> {
  _$AppThemeChangedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDarkTheme = null,
  }) {
    return _then(_value.copyWith(
      isDarkTheme: null == isDarkTheme
          ? _value.isDarkTheme
          : isDarkTheme // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppThemeChangedCopyWith<$Res>
    implements $AppThemeChangedCopyWith<$Res> {
  factory _$$_AppThemeChangedCopyWith(
          _$_AppThemeChanged value, $Res Function(_$_AppThemeChanged) then) =
      __$$_AppThemeChangedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isDarkTheme});
}

/// @nodoc
class __$$_AppThemeChangedCopyWithImpl<$Res>
    extends _$AppThemeChangedCopyWithImpl<$Res, _$_AppThemeChanged>
    implements _$$_AppThemeChangedCopyWith<$Res> {
  __$$_AppThemeChangedCopyWithImpl(
      _$_AppThemeChanged _value, $Res Function(_$_AppThemeChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDarkTheme = null,
  }) {
    return _then(_$_AppThemeChanged(
      isDarkTheme: null == isDarkTheme
          ? _value.isDarkTheme
          : isDarkTheme // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AppThemeChanged implements _AppThemeChanged {
  const _$_AppThemeChanged({required this.isDarkTheme});

  @override
  final bool isDarkTheme;

  @override
  String toString() {
    return 'AppThemeChanged(isDarkTheme: $isDarkTheme)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppThemeChanged &&
            (identical(other.isDarkTheme, isDarkTheme) ||
                other.isDarkTheme == isDarkTheme));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDarkTheme);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppThemeChangedCopyWith<_$_AppThemeChanged> get copyWith =>
      __$$_AppThemeChangedCopyWithImpl<_$_AppThemeChanged>(this, _$identity);
}

abstract class _AppThemeChanged implements AppThemeChanged {
  const factory _AppThemeChanged({required final bool isDarkTheme}) =
      _$_AppThemeChanged;

  @override
  bool get isDarkTheme;
  @override
  @JsonKey(ignore: true)
  _$$_AppThemeChangedCopyWith<_$_AppThemeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppLanguageChanged {
  LanguageCode get languageCode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppLanguageChangedCopyWith<AppLanguageChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppLanguageChangedCopyWith<$Res> {
  factory $AppLanguageChangedCopyWith(
          AppLanguageChanged value, $Res Function(AppLanguageChanged) then) =
      _$AppLanguageChangedCopyWithImpl<$Res, AppLanguageChanged>;
  @useResult
  $Res call({LanguageCode languageCode});
}

/// @nodoc
class _$AppLanguageChangedCopyWithImpl<$Res, $Val extends AppLanguageChanged>
    implements $AppLanguageChangedCopyWith<$Res> {
  _$AppLanguageChangedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? languageCode = null,
  }) {
    return _then(_value.copyWith(
      languageCode: null == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as LanguageCode,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppLanguageChangedCopyWith<$Res>
    implements $AppLanguageChangedCopyWith<$Res> {
  factory _$$_AppLanguageChangedCopyWith(_$_AppLanguageChanged value,
          $Res Function(_$_AppLanguageChanged) then) =
      __$$_AppLanguageChangedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LanguageCode languageCode});
}

/// @nodoc
class __$$_AppLanguageChangedCopyWithImpl<$Res>
    extends _$AppLanguageChangedCopyWithImpl<$Res, _$_AppLanguageChanged>
    implements _$$_AppLanguageChangedCopyWith<$Res> {
  __$$_AppLanguageChangedCopyWithImpl(
      _$_AppLanguageChanged _value, $Res Function(_$_AppLanguageChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? languageCode = null,
  }) {
    return _then(_$_AppLanguageChanged(
      languageCode: null == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as LanguageCode,
    ));
  }
}

/// @nodoc

class _$_AppLanguageChanged implements _AppLanguageChanged {
  const _$_AppLanguageChanged({required this.languageCode});

  @override
  final LanguageCode languageCode;

  @override
  String toString() {
    return 'AppLanguageChanged(languageCode: $languageCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppLanguageChanged &&
            (identical(other.languageCode, languageCode) ||
                other.languageCode == languageCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, languageCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppLanguageChangedCopyWith<_$_AppLanguageChanged> get copyWith =>
      __$$_AppLanguageChangedCopyWithImpl<_$_AppLanguageChanged>(
          this, _$identity);
}

abstract class _AppLanguageChanged implements AppLanguageChanged {
  const factory _AppLanguageChanged(
      {required final LanguageCode languageCode}) = _$_AppLanguageChanged;

  @override
  LanguageCode get languageCode;
  @override
  @JsonKey(ignore: true)
  _$$_AppLanguageChangedCopyWith<_$_AppLanguageChanged> get copyWith =>
      throw _privateConstructorUsedError;
}
