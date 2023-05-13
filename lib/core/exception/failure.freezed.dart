// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() offline,
    required TResult Function(String? errorMessage) serverError,
    required TResult Function() unexpectedDataError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? offline,
    TResult? Function(String? errorMessage)? serverError,
    TResult? Function()? unexpectedDataError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? offline,
    TResult Function(String? errorMessage)? serverError,
    TResult Function()? unexpectedDataError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Offline value) offline,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_UnexpectedDataError value) unexpectedDataError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Offline value)? offline,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_UnexpectedDataError value)? unexpectedDataError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Offline value)? offline,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UnexpectedDataError value)? unexpectedDataError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_OfflineCopyWith<$Res> {
  factory _$$_OfflineCopyWith(
          _$_Offline value, $Res Function(_$_Offline) then) =
      __$$_OfflineCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OfflineCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$_Offline>
    implements _$$_OfflineCopyWith<$Res> {
  __$$_OfflineCopyWithImpl(_$_Offline _value, $Res Function(_$_Offline) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Offline implements _Offline {
  const _$_Offline();

  @override
  String toString() {
    return 'Failure.offline()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Offline);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() offline,
    required TResult Function(String? errorMessage) serverError,
    required TResult Function() unexpectedDataError,
  }) {
    return offline();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? offline,
    TResult? Function(String? errorMessage)? serverError,
    TResult? Function()? unexpectedDataError,
  }) {
    return offline?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? offline,
    TResult Function(String? errorMessage)? serverError,
    TResult Function()? unexpectedDataError,
    required TResult orElse(),
  }) {
    if (offline != null) {
      return offline();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Offline value) offline,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_UnexpectedDataError value) unexpectedDataError,
  }) {
    return offline(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Offline value)? offline,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_UnexpectedDataError value)? unexpectedDataError,
  }) {
    return offline?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Offline value)? offline,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UnexpectedDataError value)? unexpectedDataError,
    required TResult orElse(),
  }) {
    if (offline != null) {
      return offline(this);
    }
    return orElse();
  }
}

abstract class _Offline implements Failure {
  const factory _Offline() = _$_Offline;
}

/// @nodoc
abstract class _$$_ServerErrorCopyWith<$Res> {
  factory _$$_ServerErrorCopyWith(
          _$_ServerError value, $Res Function(_$_ServerError) then) =
      __$$_ServerErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? errorMessage});
}

/// @nodoc
class __$$_ServerErrorCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$_ServerError>
    implements _$$_ServerErrorCopyWith<$Res> {
  __$$_ServerErrorCopyWithImpl(
      _$_ServerError _value, $Res Function(_$_ServerError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_$_ServerError(
      freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ServerError implements _ServerError {
  const _$_ServerError(this.errorMessage);

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'Failure.serverError(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServerError &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServerErrorCopyWith<_$_ServerError> get copyWith =>
      __$$_ServerErrorCopyWithImpl<_$_ServerError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() offline,
    required TResult Function(String? errorMessage) serverError,
    required TResult Function() unexpectedDataError,
  }) {
    return serverError(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? offline,
    TResult? Function(String? errorMessage)? serverError,
    TResult? Function()? unexpectedDataError,
  }) {
    return serverError?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? offline,
    TResult Function(String? errorMessage)? serverError,
    TResult Function()? unexpectedDataError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Offline value) offline,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_UnexpectedDataError value) unexpectedDataError,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Offline value)? offline,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_UnexpectedDataError value)? unexpectedDataError,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Offline value)? offline,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UnexpectedDataError value)? unexpectedDataError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements Failure {
  const factory _ServerError(final String? errorMessage) = _$_ServerError;

  String? get errorMessage;
  @JsonKey(ignore: true)
  _$$_ServerErrorCopyWith<_$_ServerError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UnexpectedDataErrorCopyWith<$Res> {
  factory _$$_UnexpectedDataErrorCopyWith(_$_UnexpectedDataError value,
          $Res Function(_$_UnexpectedDataError) then) =
      __$$_UnexpectedDataErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnexpectedDataErrorCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$_UnexpectedDataError>
    implements _$$_UnexpectedDataErrorCopyWith<$Res> {
  __$$_UnexpectedDataErrorCopyWithImpl(_$_UnexpectedDataError _value,
      $Res Function(_$_UnexpectedDataError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UnexpectedDataError implements _UnexpectedDataError {
  const _$_UnexpectedDataError();

  @override
  String toString() {
    return 'Failure.unexpectedDataError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UnexpectedDataError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() offline,
    required TResult Function(String? errorMessage) serverError,
    required TResult Function() unexpectedDataError,
  }) {
    return unexpectedDataError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? offline,
    TResult? Function(String? errorMessage)? serverError,
    TResult? Function()? unexpectedDataError,
  }) {
    return unexpectedDataError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? offline,
    TResult Function(String? errorMessage)? serverError,
    TResult Function()? unexpectedDataError,
    required TResult orElse(),
  }) {
    if (unexpectedDataError != null) {
      return unexpectedDataError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Offline value) offline,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_UnexpectedDataError value) unexpectedDataError,
  }) {
    return unexpectedDataError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Offline value)? offline,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_UnexpectedDataError value)? unexpectedDataError,
  }) {
    return unexpectedDataError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Offline value)? offline,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UnexpectedDataError value)? unexpectedDataError,
    required TResult orElse(),
  }) {
    if (unexpectedDataError != null) {
      return unexpectedDataError(this);
    }
    return orElse();
  }
}

abstract class _UnexpectedDataError implements Failure {
  const factory _UnexpectedDataError() = _$_UnexpectedDataError;
}
