import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_fail_or_success.freezed.dart';

@freezed
class AuthResult with _$AuthResult {
  const factory AuthResult.weakPassword() = WeakPassword;
  const factory AuthResult.wrongPassword() = WrongPassword;
  const factory AuthResult.userDisabled() = UserDisabled;
  const factory AuthResult.userNotFound() = UserNotFound;
  const factory AuthResult.invalidEmail() = InvalidEmail;
  const factory AuthResult.emailAlreadyInUse() = EmailAlreadyInUse;
  const factory AuthResult.notAllowed() = NotAllowed;
  const factory AuthResult.loginSuccess() = LoginSuccess;
  const factory AuthResult.registerSuccess() = RegisterSuccess;
  const factory AuthResult.serverError() = ServerError;
}