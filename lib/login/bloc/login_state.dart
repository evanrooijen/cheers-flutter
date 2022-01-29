part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = Initial;
  const factory LoginState.loading() = LoginLoading;
  const factory LoginState.success() = LoginSucceeded;
  const factory LoginState.failed() = LoginFailed;
}
