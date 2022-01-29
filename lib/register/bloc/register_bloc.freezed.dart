// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'register_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RegisterEventTearOff {
  const _$RegisterEventTearOff();

  RegisterRequest request(String email, String password) {
    return RegisterRequest(
      email,
      password,
    );
  }

  RegisterSuccess success() {
    return const RegisterSuccess();
  }

  RegisterFailure failure() {
    return const RegisterFailure();
  }
}

/// @nodoc
const $RegisterEvent = _$RegisterEventTearOff();

/// @nodoc
mixin _$RegisterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) request,
    required TResult Function() success,
    required TResult Function() failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? request,
    TResult Function()? success,
    TResult Function()? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? request,
    TResult Function()? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterRequest value) request,
    required TResult Function(RegisterSuccess value) success,
    required TResult Function(RegisterFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RegisterRequest value)? request,
    TResult Function(RegisterSuccess value)? success,
    TResult Function(RegisterFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterRequest value)? request,
    TResult Function(RegisterSuccess value)? success,
    TResult Function(RegisterFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterEventCopyWith<$Res> {
  factory $RegisterEventCopyWith(
          RegisterEvent value, $Res Function(RegisterEvent) then) =
      _$RegisterEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterEventCopyWithImpl<$Res>
    implements $RegisterEventCopyWith<$Res> {
  _$RegisterEventCopyWithImpl(this._value, this._then);

  final RegisterEvent _value;
  // ignore: unused_field
  final $Res Function(RegisterEvent) _then;
}

/// @nodoc
abstract class $RegisterRequestCopyWith<$Res> {
  factory $RegisterRequestCopyWith(
          RegisterRequest value, $Res Function(RegisterRequest) then) =
      _$RegisterRequestCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

/// @nodoc
class _$RegisterRequestCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements $RegisterRequestCopyWith<$Res> {
  _$RegisterRequestCopyWithImpl(
      RegisterRequest _value, $Res Function(RegisterRequest) _then)
      : super(_value, (v) => _then(v as RegisterRequest));

  @override
  RegisterRequest get _value => super._value as RegisterRequest;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(RegisterRequest(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterRequest implements RegisterRequest {
  const _$RegisterRequest(this.email, this.password);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'RegisterEvent.request(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RegisterRequest &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  $RegisterRequestCopyWith<RegisterRequest> get copyWith =>
      _$RegisterRequestCopyWithImpl<RegisterRequest>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) request,
    required TResult Function() success,
    required TResult Function() failure,
  }) {
    return request(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? request,
    TResult Function()? success,
    TResult Function()? failure,
  }) {
    return request?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? request,
    TResult Function()? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (request != null) {
      return request(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterRequest value) request,
    required TResult Function(RegisterSuccess value) success,
    required TResult Function(RegisterFailure value) failure,
  }) {
    return request(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RegisterRequest value)? request,
    TResult Function(RegisterSuccess value)? success,
    TResult Function(RegisterFailure value)? failure,
  }) {
    return request?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterRequest value)? request,
    TResult Function(RegisterSuccess value)? success,
    TResult Function(RegisterFailure value)? failure,
    required TResult orElse(),
  }) {
    if (request != null) {
      return request(this);
    }
    return orElse();
  }
}

abstract class RegisterRequest implements RegisterEvent {
  const factory RegisterRequest(String email, String password) =
      _$RegisterRequest;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  $RegisterRequestCopyWith<RegisterRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterSuccessCopyWith<$Res> {
  factory $RegisterSuccessCopyWith(
          RegisterSuccess value, $Res Function(RegisterSuccess) then) =
      _$RegisterSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterSuccessCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements $RegisterSuccessCopyWith<$Res> {
  _$RegisterSuccessCopyWithImpl(
      RegisterSuccess _value, $Res Function(RegisterSuccess) _then)
      : super(_value, (v) => _then(v as RegisterSuccess));

  @override
  RegisterSuccess get _value => super._value as RegisterSuccess;
}

/// @nodoc

class _$RegisterSuccess implements RegisterSuccess {
  const _$RegisterSuccess();

  @override
  String toString() {
    return 'RegisterEvent.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RegisterSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) request,
    required TResult Function() success,
    required TResult Function() failure,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? request,
    TResult Function()? success,
    TResult Function()? failure,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? request,
    TResult Function()? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterRequest value) request,
    required TResult Function(RegisterSuccess value) success,
    required TResult Function(RegisterFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RegisterRequest value)? request,
    TResult Function(RegisterSuccess value)? success,
    TResult Function(RegisterFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterRequest value)? request,
    TResult Function(RegisterSuccess value)? success,
    TResult Function(RegisterFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class RegisterSuccess implements RegisterEvent {
  const factory RegisterSuccess() = _$RegisterSuccess;
}

/// @nodoc
abstract class $RegisterFailureCopyWith<$Res> {
  factory $RegisterFailureCopyWith(
          RegisterFailure value, $Res Function(RegisterFailure) then) =
      _$RegisterFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterFailureCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements $RegisterFailureCopyWith<$Res> {
  _$RegisterFailureCopyWithImpl(
      RegisterFailure _value, $Res Function(RegisterFailure) _then)
      : super(_value, (v) => _then(v as RegisterFailure));

  @override
  RegisterFailure get _value => super._value as RegisterFailure;
}

/// @nodoc

class _$RegisterFailure implements RegisterFailure {
  const _$RegisterFailure();

  @override
  String toString() {
    return 'RegisterEvent.failure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RegisterFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) request,
    required TResult Function() success,
    required TResult Function() failure,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? request,
    TResult Function()? success,
    TResult Function()? failure,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? request,
    TResult Function()? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterRequest value) request,
    required TResult Function(RegisterSuccess value) success,
    required TResult Function(RegisterFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RegisterRequest value)? request,
    TResult Function(RegisterSuccess value)? success,
    TResult Function(RegisterFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterRequest value)? request,
    TResult Function(RegisterSuccess value)? success,
    TResult Function(RegisterFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class RegisterFailure implements RegisterEvent {
  const factory RegisterFailure() = _$RegisterFailure;
}

/// @nodoc
class _$RegisterStateTearOff {
  const _$RegisterStateTearOff();

  Initial initial() {
    return const Initial();
  }

  RegisterLoading loading() {
    return const RegisterLoading();
  }

  RegisterSucceeded success() {
    return const RegisterSucceeded();
  }

  RegisterFailed failed() {
    return const RegisterFailed();
  }
}

/// @nodoc
const $RegisterState = _$RegisterStateTearOff();

/// @nodoc
mixin _$RegisterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(RegisterLoading value) loading,
    required TResult Function(RegisterSucceeded value) success,
    required TResult Function(RegisterFailed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(RegisterLoading value)? loading,
    TResult Function(RegisterSucceeded value)? success,
    TResult Function(RegisterFailed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(RegisterLoading value)? loading,
    TResult Function(RegisterSucceeded value)? success,
    TResult Function(RegisterFailed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  final RegisterState _value;
  // ignore: unused_field
  final $Res Function(RegisterState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$RegisterStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'RegisterState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(RegisterLoading value) loading,
    required TResult Function(RegisterSucceeded value) success,
    required TResult Function(RegisterFailed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(RegisterLoading value)? loading,
    TResult Function(RegisterSucceeded value)? success,
    TResult Function(RegisterFailed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(RegisterLoading value)? loading,
    TResult Function(RegisterSucceeded value)? success,
    TResult Function(RegisterFailed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements RegisterState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $RegisterLoadingCopyWith<$Res> {
  factory $RegisterLoadingCopyWith(
          RegisterLoading value, $Res Function(RegisterLoading) then) =
      _$RegisterLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterLoadingCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res>
    implements $RegisterLoadingCopyWith<$Res> {
  _$RegisterLoadingCopyWithImpl(
      RegisterLoading _value, $Res Function(RegisterLoading) _then)
      : super(_value, (v) => _then(v as RegisterLoading));

  @override
  RegisterLoading get _value => super._value as RegisterLoading;
}

/// @nodoc

class _$RegisterLoading implements RegisterLoading {
  const _$RegisterLoading();

  @override
  String toString() {
    return 'RegisterState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RegisterLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(RegisterLoading value) loading,
    required TResult Function(RegisterSucceeded value) success,
    required TResult Function(RegisterFailed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(RegisterLoading value)? loading,
    TResult Function(RegisterSucceeded value)? success,
    TResult Function(RegisterFailed value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(RegisterLoading value)? loading,
    TResult Function(RegisterSucceeded value)? success,
    TResult Function(RegisterFailed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class RegisterLoading implements RegisterState {
  const factory RegisterLoading() = _$RegisterLoading;
}

/// @nodoc
abstract class $RegisterSucceededCopyWith<$Res> {
  factory $RegisterSucceededCopyWith(
          RegisterSucceeded value, $Res Function(RegisterSucceeded) then) =
      _$RegisterSucceededCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterSucceededCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res>
    implements $RegisterSucceededCopyWith<$Res> {
  _$RegisterSucceededCopyWithImpl(
      RegisterSucceeded _value, $Res Function(RegisterSucceeded) _then)
      : super(_value, (v) => _then(v as RegisterSucceeded));

  @override
  RegisterSucceeded get _value => super._value as RegisterSucceeded;
}

/// @nodoc

class _$RegisterSucceeded implements RegisterSucceeded {
  const _$RegisterSucceeded();

  @override
  String toString() {
    return 'RegisterState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RegisterSucceeded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() failed,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? failed,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(RegisterLoading value) loading,
    required TResult Function(RegisterSucceeded value) success,
    required TResult Function(RegisterFailed value) failed,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(RegisterLoading value)? loading,
    TResult Function(RegisterSucceeded value)? success,
    TResult Function(RegisterFailed value)? failed,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(RegisterLoading value)? loading,
    TResult Function(RegisterSucceeded value)? success,
    TResult Function(RegisterFailed value)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class RegisterSucceeded implements RegisterState {
  const factory RegisterSucceeded() = _$RegisterSucceeded;
}

/// @nodoc
abstract class $RegisterFailedCopyWith<$Res> {
  factory $RegisterFailedCopyWith(
          RegisterFailed value, $Res Function(RegisterFailed) then) =
      _$RegisterFailedCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterFailedCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res>
    implements $RegisterFailedCopyWith<$Res> {
  _$RegisterFailedCopyWithImpl(
      RegisterFailed _value, $Res Function(RegisterFailed) _then)
      : super(_value, (v) => _then(v as RegisterFailed));

  @override
  RegisterFailed get _value => super._value as RegisterFailed;
}

/// @nodoc

class _$RegisterFailed implements RegisterFailed {
  const _$RegisterFailed();

  @override
  String toString() {
    return 'RegisterState.failed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RegisterFailed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() failed,
  }) {
    return failed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? failed,
  }) {
    return failed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(RegisterLoading value) loading,
    required TResult Function(RegisterSucceeded value) success,
    required TResult Function(RegisterFailed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(RegisterLoading value)? loading,
    TResult Function(RegisterSucceeded value)? success,
    TResult Function(RegisterFailed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(RegisterLoading value)? loading,
    TResult Function(RegisterSucceeded value)? success,
    TResult Function(RegisterFailed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class RegisterFailed implements RegisterState {
  const factory RegisterFailed() = _$RegisterFailed;
}
