import 'package:bloc/bloc.dart';
import 'package:cheers/auth/auth_repository.dart';
import 'package:cheers/auth/models/auth_fail_or_success.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_bloc.freezed.dart';
part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final AuthRepository _authRepository;

  RegisterBloc({required AuthRepository authRepository})
      : _authRepository = authRepository,
        super(const RegisterState.initial()) {
    on<RegisterRequest>(_onRegisterRequested);
  }

  _onRegisterRequested(
      RegisterRequest event, Emitter<RegisterState> emit) async {
    emit(const RegisterState.loading());
    final AuthResult result;
    result = await _authRepository.signUp(
        email: event.email, password: event.password);
    if (result is LoginSuccess) {
      emit(const RegisterState.success());
    } else {
      emit(const RegisterState.failed());
    }
  }
}
