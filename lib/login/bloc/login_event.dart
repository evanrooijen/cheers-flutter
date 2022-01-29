part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.request(String email, String password) =
      LoginRequest;
  const factory LoginEvent.success() = LoginSuccess;
  const factory LoginEvent.failure() = LoginFailure;
}
