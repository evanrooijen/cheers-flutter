import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cheers/auth/auth_repository.dart';
import 'package:cheers/auth/models/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository;
  late StreamSubscription _authStateSubscription;

  AuthBloc({required AuthRepository authRepository})
      : _authRepository = authRepository,
        super(const AuthState.initial()) {
    on<LogoutRequested>(_onLogoutRequested);
    on<AuthStatusChanged>(_onAuthStatusChanged);

    _authStateSubscription = _authRepository.user.listen((event) {
      add(AuthEvent.authStatusChanged(event));
    });
  }

  void _onLogoutRequested(
      LogoutRequested event, Emitter<AuthState> emit) async {
    await _authRepository.signOut();
  }

  void _onAuthStatusChanged(
      AuthStatusChanged event, Emitter<AuthState> emit) async {
    if (event.user == const User.empty()) {
      emit(const AuthState.unauthenticated());
    } else {
      emit(AuthState.authenticated(event.user));
    }
  }

  @override
  Future<void> close() async {
    _authStateSubscription.cancel();
    super.close();
  }
}
