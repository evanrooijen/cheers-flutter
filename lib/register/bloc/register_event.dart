part of 'register_bloc.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.request(String email, String password) =
      RegisterRequest;
  const factory RegisterEvent.success() = RegisterSuccess;
  const factory RegisterEvent.failure() = RegisterFailure;
}
