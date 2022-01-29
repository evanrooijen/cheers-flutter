part of 'register_bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState.initial() = Initial;
  const factory RegisterState.loading() = RegisterLoading;
  const factory RegisterState.success() = RegisterSucceeded;
  const factory RegisterState.failed() = RegisterFailed;
}
