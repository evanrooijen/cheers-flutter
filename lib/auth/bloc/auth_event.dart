part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authStatusChanged(User user) = AuthStatusChanged;
  const factory AuthEvent.logoutRequested() = LogoutRequested;
}
