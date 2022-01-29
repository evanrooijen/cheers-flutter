import 'package:bloc/bloc.dart';
import 'package:cheers/auth/auth_repository.dart';
import 'package:cheers/auth/models/auth_fail_or_success.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRepository _authRepository;

  LoginBloc({required AuthRepository authRepository})
      : _authRepository = authRepository,
        super(const LoginState.initial()) {
    on<LoginRequest>(_onLoginRequested);
  }

  _onLoginRequested(LoginRequest event, Emitter<LoginState> emit) async {
    emit(const LoginState.loading());
    final AuthResult result;
    result = await _authRepository.signInWithEmailAndPassword(
        email: event.email, password: event.password);
    if (result == const AuthResult.loginSuccess()) {
      emit(const LoginState.success());
    } else {
      emit(const LoginState.failed());
    }
  }
}
