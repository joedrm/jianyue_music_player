// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'load_more_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoadMoreOutput<T> {
  List<T> get data => throw _privateConstructorUsedError;
  Object? get otherData => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  bool get isRefreshSuccess => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;
  bool get isLastPage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoadMoreOutputCopyWith<T, LoadMoreOutput<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadMoreOutputCopyWith<T, $Res> {
  factory $LoadMoreOutputCopyWith(
          LoadMoreOutput<T> value, $Res Function(LoadMoreOutput<T>) then) =
      _$LoadMoreOutputCopyWithImpl<T, $Res, LoadMoreOutput<T>>;
  @useResult
  $Res call(
      {List<T> data,
      Object? otherData,
      int page,
      bool isRefreshSuccess,
      int offset,
      bool isLastPage});
}

/// @nodoc
class _$LoadMoreOutputCopyWithImpl<T, $Res, $Val extends LoadMoreOutput<T>>
    implements $LoadMoreOutputCopyWith<T, $Res> {
  _$LoadMoreOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? otherData = freezed,
    Object? page = null,
    Object? isRefreshSuccess = null,
    Object? offset = null,
    Object? isLastPage = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
      otherData: freezed == otherData ? _value.otherData : otherData,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      isRefreshSuccess: null == isRefreshSuccess
          ? _value.isRefreshSuccess
          : isRefreshSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      isLastPage: null == isLastPage
          ? _value.isLastPage
          : isLastPage // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoadMoreOutputCopyWith<T, $Res>
    implements $LoadMoreOutputCopyWith<T, $Res> {
  factory _$$_LoadMoreOutputCopyWith(_$_LoadMoreOutput<T> value,
          $Res Function(_$_LoadMoreOutput<T>) then) =
      __$$_LoadMoreOutputCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {List<T> data,
      Object? otherData,
      int page,
      bool isRefreshSuccess,
      int offset,
      bool isLastPage});
}

/// @nodoc
class __$$_LoadMoreOutputCopyWithImpl<T, $Res>
    extends _$LoadMoreOutputCopyWithImpl<T, $Res, _$_LoadMoreOutput<T>>
    implements _$$_LoadMoreOutputCopyWith<T, $Res> {
  __$$_LoadMoreOutputCopyWithImpl(
      _$_LoadMoreOutput<T> _value, $Res Function(_$_LoadMoreOutput<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? otherData = freezed,
    Object? page = null,
    Object? isRefreshSuccess = null,
    Object? offset = null,
    Object? isLastPage = null,
  }) {
    return _then(_$_LoadMoreOutput<T>(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
      otherData: freezed == otherData ? _value.otherData : otherData,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      isRefreshSuccess: null == isRefreshSuccess
          ? _value.isRefreshSuccess
          : isRefreshSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      isLastPage: null == isLastPage
          ? _value.isLastPage
          : isLastPage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LoadMoreOutput<T> extends _LoadMoreOutput<T> {
  const _$_LoadMoreOutput(
      {required final List<T> data,
      this.otherData = null,
      this.page = PagingConstants.initialPage,
      this.isRefreshSuccess = false,
      this.offset = 0,
      this.isLastPage = false})
      : _data = data,
        super._();

  final List<T> _data;
  @override
  List<T> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey()
  final Object? otherData;
  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final bool isRefreshSuccess;
  @override
  @JsonKey()
  final int offset;
  @override
  @JsonKey()
  final bool isLastPage;

  @override
  String toString() {
    return 'LoadMoreOutput<$T>(data: $data, otherData: $otherData, page: $page, isRefreshSuccess: $isRefreshSuccess, offset: $offset, isLastPage: $isLastPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadMoreOutput<T> &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality().equals(other.otherData, otherData) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.isRefreshSuccess, isRefreshSuccess) ||
                other.isRefreshSuccess == isRefreshSuccess) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.isLastPage, isLastPage) ||
                other.isLastPage == isLastPage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(otherData),
      page,
      isRefreshSuccess,
      offset,
      isLastPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadMoreOutputCopyWith<T, _$_LoadMoreOutput<T>> get copyWith =>
      __$$_LoadMoreOutputCopyWithImpl<T, _$_LoadMoreOutput<T>>(
          this, _$identity);
}

abstract class _LoadMoreOutput<T> extends LoadMoreOutput<T> {
  const factory _LoadMoreOutput(
      {required final List<T> data,
      final Object? otherData,
      final int page,
      final bool isRefreshSuccess,
      final int offset,
      final bool isLastPage}) = _$_LoadMoreOutput<T>;
  const _LoadMoreOutput._() : super._();

  @override
  List<T> get data;
  @override
  Object? get otherData;
  @override
  int get page;
  @override
  bool get isRefreshSuccess;
  @override
  int get offset;
  @override
  bool get isLastPage;
  @override
  @JsonKey(ignore: true)
  _$$_LoadMoreOutputCopyWith<T, _$_LoadMoreOutput<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
