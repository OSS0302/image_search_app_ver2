// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainEvent<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() dataLoadingError,
    required TResult Function(String message) showSnackBar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? dataLoadingError,
    TResult? Function(String message)? showSnackBar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dataLoadingError,
    TResult Function(String message)? showSnackBar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataLoadingError<T> value) dataLoadingError,
    required TResult Function(ShowSnackBar<T> value) showSnackBar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DataLoadingError<T> value)? dataLoadingError,
    TResult? Function(ShowSnackBar<T> value)? showSnackBar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataLoadingError<T> value)? dataLoadingError,
    TResult Function(ShowSnackBar<T> value)? showSnackBar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainEventCopyWith<T, $Res> {
  factory $MainEventCopyWith(
          MainEvent<T> value, $Res Function(MainEvent<T>) then) =
      _$MainEventCopyWithImpl<T, $Res, MainEvent<T>>;
}

/// @nodoc
class _$MainEventCopyWithImpl<T, $Res, $Val extends MainEvent<T>>
    implements $MainEventCopyWith<T, $Res> {
  _$MainEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DataLoadingErrorImplCopyWith<T, $Res> {
  factory _$$DataLoadingErrorImplCopyWith(_$DataLoadingErrorImpl<T> value,
          $Res Function(_$DataLoadingErrorImpl<T>) then) =
      __$$DataLoadingErrorImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$DataLoadingErrorImplCopyWithImpl<T, $Res>
    extends _$MainEventCopyWithImpl<T, $Res, _$DataLoadingErrorImpl<T>>
    implements _$$DataLoadingErrorImplCopyWith<T, $Res> {
  __$$DataLoadingErrorImplCopyWithImpl(_$DataLoadingErrorImpl<T> _value,
      $Res Function(_$DataLoadingErrorImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DataLoadingErrorImpl<T> implements DataLoadingError<T> {
  const _$DataLoadingErrorImpl();

  @override
  String toString() {
    return 'MainEvent<$T>.dataLoadingError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataLoadingErrorImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() dataLoadingError,
    required TResult Function(String message) showSnackBar,
  }) {
    return dataLoadingError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? dataLoadingError,
    TResult? Function(String message)? showSnackBar,
  }) {
    return dataLoadingError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dataLoadingError,
    TResult Function(String message)? showSnackBar,
    required TResult orElse(),
  }) {
    if (dataLoadingError != null) {
      return dataLoadingError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataLoadingError<T> value) dataLoadingError,
    required TResult Function(ShowSnackBar<T> value) showSnackBar,
  }) {
    return dataLoadingError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DataLoadingError<T> value)? dataLoadingError,
    TResult? Function(ShowSnackBar<T> value)? showSnackBar,
  }) {
    return dataLoadingError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataLoadingError<T> value)? dataLoadingError,
    TResult Function(ShowSnackBar<T> value)? showSnackBar,
    required TResult orElse(),
  }) {
    if (dataLoadingError != null) {
      return dataLoadingError(this);
    }
    return orElse();
  }
}

abstract class DataLoadingError<T> implements MainEvent<T> {
  const factory DataLoadingError() = _$DataLoadingErrorImpl<T>;
}

/// @nodoc
abstract class _$$ShowSnackBarImplCopyWith<T, $Res> {
  factory _$$ShowSnackBarImplCopyWith(_$ShowSnackBarImpl<T> value,
          $Res Function(_$ShowSnackBarImpl<T>) then) =
      __$$ShowSnackBarImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ShowSnackBarImplCopyWithImpl<T, $Res>
    extends _$MainEventCopyWithImpl<T, $Res, _$ShowSnackBarImpl<T>>
    implements _$$ShowSnackBarImplCopyWith<T, $Res> {
  __$$ShowSnackBarImplCopyWithImpl(
      _$ShowSnackBarImpl<T> _value, $Res Function(_$ShowSnackBarImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ShowSnackBarImpl<T>(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ShowSnackBarImpl<T> implements ShowSnackBar<T> {
  const _$ShowSnackBarImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'MainEvent<$T>.showSnackBar(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowSnackBarImpl<T> &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowSnackBarImplCopyWith<T, _$ShowSnackBarImpl<T>> get copyWith =>
      __$$ShowSnackBarImplCopyWithImpl<T, _$ShowSnackBarImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() dataLoadingError,
    required TResult Function(String message) showSnackBar,
  }) {
    return showSnackBar(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? dataLoadingError,
    TResult? Function(String message)? showSnackBar,
  }) {
    return showSnackBar?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dataLoadingError,
    TResult Function(String message)? showSnackBar,
    required TResult orElse(),
  }) {
    if (showSnackBar != null) {
      return showSnackBar(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataLoadingError<T> value) dataLoadingError,
    required TResult Function(ShowSnackBar<T> value) showSnackBar,
  }) {
    return showSnackBar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DataLoadingError<T> value)? dataLoadingError,
    TResult? Function(ShowSnackBar<T> value)? showSnackBar,
  }) {
    return showSnackBar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataLoadingError<T> value)? dataLoadingError,
    TResult Function(ShowSnackBar<T> value)? showSnackBar,
    required TResult orElse(),
  }) {
    if (showSnackBar != null) {
      return showSnackBar(this);
    }
    return orElse();
  }
}

abstract class ShowSnackBar<T> implements MainEvent<T> {
  const factory ShowSnackBar(final String message) = _$ShowSnackBarImpl<T>;

  String get message;
  @JsonKey(ignore: true)
  _$$ShowSnackBarImplCopyWith<T, _$ShowSnackBarImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
