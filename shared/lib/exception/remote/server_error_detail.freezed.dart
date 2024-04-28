// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'server_error_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ServerErrorDetail {
  String get detail => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;

  /// server-defined error code
  String get serverErrorId => throw _privateConstructorUsedError;

  /// server-defined status code
  int get serverStatusCode => throw _privateConstructorUsedError;

  /// server-defined message
  String get message => throw _privateConstructorUsedError;

  /// server-defined field
  String get field => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ServerErrorDetailCopyWith<ServerErrorDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerErrorDetailCopyWith<$Res> {
  factory $ServerErrorDetailCopyWith(
          ServerErrorDetail value, $Res Function(ServerErrorDetail) then) =
      _$ServerErrorDetailCopyWithImpl<$Res, ServerErrorDetail>;
  @useResult
  $Res call(
      {String detail,
      String path,
      String serverErrorId,
      int serverStatusCode,
      String message,
      String field});
}

/// @nodoc
class _$ServerErrorDetailCopyWithImpl<$Res, $Val extends ServerErrorDetail>
    implements $ServerErrorDetailCopyWith<$Res> {
  _$ServerErrorDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detail = null,
    Object? path = null,
    Object? serverErrorId = null,
    Object? serverStatusCode = null,
    Object? message = null,
    Object? field = null,
  }) {
    return _then(_value.copyWith(
      detail: null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      serverErrorId: null == serverErrorId
          ? _value.serverErrorId
          : serverErrorId // ignore: cast_nullable_to_non_nullable
              as String,
      serverStatusCode: null == serverStatusCode
          ? _value.serverStatusCode
          : serverStatusCode // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      field: null == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ServerErrorDetailCopyWith<$Res>
    implements $ServerErrorDetailCopyWith<$Res> {
  factory _$$_ServerErrorDetailCopyWith(_$_ServerErrorDetail value,
          $Res Function(_$_ServerErrorDetail) then) =
      __$$_ServerErrorDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String detail,
      String path,
      String serverErrorId,
      int serverStatusCode,
      String message,
      String field});
}

/// @nodoc
class __$$_ServerErrorDetailCopyWithImpl<$Res>
    extends _$ServerErrorDetailCopyWithImpl<$Res, _$_ServerErrorDetail>
    implements _$$_ServerErrorDetailCopyWith<$Res> {
  __$$_ServerErrorDetailCopyWithImpl(
      _$_ServerErrorDetail _value, $Res Function(_$_ServerErrorDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detail = null,
    Object? path = null,
    Object? serverErrorId = null,
    Object? serverStatusCode = null,
    Object? message = null,
    Object? field = null,
  }) {
    return _then(_$_ServerErrorDetail(
      detail: null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      serverErrorId: null == serverErrorId
          ? _value.serverErrorId
          : serverErrorId // ignore: cast_nullable_to_non_nullable
              as String,
      serverStatusCode: null == serverStatusCode
          ? _value.serverStatusCode
          : serverStatusCode // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      field: null == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ServerErrorDetail implements _ServerErrorDetail {
  const _$_ServerErrorDetail(
      {this.detail = '',
      this.path = '',
      this.serverErrorId = '',
      this.serverStatusCode = -1,
      this.message = '',
      this.field = ''});

  @override
  @JsonKey()
  final String detail;
  @override
  @JsonKey()
  final String path;

  /// server-defined error code
  @override
  @JsonKey()
  final String serverErrorId;

  /// server-defined status code
  @override
  @JsonKey()
  final int serverStatusCode;

  /// server-defined message
  @override
  @JsonKey()
  final String message;

  /// server-defined field
  @override
  @JsonKey()
  final String field;

  @override
  String toString() {
    return 'ServerErrorDetail(detail: $detail, path: $path, serverErrorId: $serverErrorId, serverStatusCode: $serverStatusCode, message: $message, field: $field)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServerErrorDetail &&
            (identical(other.detail, detail) || other.detail == detail) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.serverErrorId, serverErrorId) ||
                other.serverErrorId == serverErrorId) &&
            (identical(other.serverStatusCode, serverStatusCode) ||
                other.serverStatusCode == serverStatusCode) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.field, field) || other.field == field));
  }

  @override
  int get hashCode => Object.hash(runtimeType, detail, path, serverErrorId,
      serverStatusCode, message, field);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServerErrorDetailCopyWith<_$_ServerErrorDetail> get copyWith =>
      __$$_ServerErrorDetailCopyWithImpl<_$_ServerErrorDetail>(
          this, _$identity);
}

abstract class _ServerErrorDetail implements ServerErrorDetail {
  const factory _ServerErrorDetail(
      {final String detail,
      final String path,
      final String serverErrorId,
      final int serverStatusCode,
      final String message,
      final String field}) = _$_ServerErrorDetail;

  @override
  String get detail;
  @override
  String get path;
  @override

  /// server-defined error code
  String get serverErrorId;
  @override

  /// server-defined status code
  int get serverStatusCode;
  @override

  /// server-defined message
  String get message;
  @override

  /// server-defined field
  String get field;
  @override
  @JsonKey(ignore: true)
  _$$_ServerErrorDetailCopyWith<_$_ServerErrorDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
