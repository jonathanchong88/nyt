// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ResultEntity {
  String get title => throw _privateConstructorUsedError;
  DateTime? get datePublished => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResultEntityCopyWith<ResultEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultEntityCopyWith<$Res> {
  factory $ResultEntityCopyWith(
          ResultEntity value, $Res Function(ResultEntity) then) =
      _$ResultEntityCopyWithImpl<$Res, ResultEntity>;
  @useResult
  $Res call({String title, DateTime? datePublished});
}

/// @nodoc
class _$ResultEntityCopyWithImpl<$Res, $Val extends ResultEntity>
    implements $ResultEntityCopyWith<$Res> {
  _$ResultEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? datePublished = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      datePublished: freezed == datePublished
          ? _value.datePublished
          : datePublished // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResultEntityCopyWith<$Res>
    implements $ResultEntityCopyWith<$Res> {
  factory _$$_ResultEntityCopyWith(
          _$_ResultEntity value, $Res Function(_$_ResultEntity) then) =
      __$$_ResultEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, DateTime? datePublished});
}

/// @nodoc
class __$$_ResultEntityCopyWithImpl<$Res>
    extends _$ResultEntityCopyWithImpl<$Res, _$_ResultEntity>
    implements _$$_ResultEntityCopyWith<$Res> {
  __$$_ResultEntityCopyWithImpl(
      _$_ResultEntity _value, $Res Function(_$_ResultEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? datePublished = freezed,
  }) {
    return _then(_$_ResultEntity(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      datePublished: freezed == datePublished
          ? _value.datePublished
          : datePublished // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_ResultEntity implements _ResultEntity {
  _$_ResultEntity({this.title = '', this.datePublished});

  @override
  @JsonKey()
  final String title;
  @override
  final DateTime? datePublished;

  @override
  String toString() {
    return 'ResultEntity(title: $title, datePublished: $datePublished)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResultEntity &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.datePublished, datePublished) ||
                other.datePublished == datePublished));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, datePublished);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResultEntityCopyWith<_$_ResultEntity> get copyWith =>
      __$$_ResultEntityCopyWithImpl<_$_ResultEntity>(this, _$identity);
}

abstract class _ResultEntity implements ResultEntity {
  factory _ResultEntity({final String title, final DateTime? datePublished}) =
      _$_ResultEntity;

  @override
  String get title;
  @override
  DateTime? get datePublished;
  @override
  @JsonKey(ignore: true)
  _$$_ResultEntityCopyWith<_$_ResultEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
