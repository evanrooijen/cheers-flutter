import 'package:cheers/auth/models/auth_fail_or_success.dart';
import 'package:cheers/auth/models/user.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'dart:async';

/// {@template auth_repository}
/// Repository which manages user authentication.
/// {@endtemplate}
class AuthRepository {
  final firebase_auth.FirebaseAuth _firebaseAuth;

  /// {@macro auth_repository}
  AuthRepository({firebase_auth.FirebaseAuth? firebaseAuth})
      : _firebaseAuth = firebaseAuth ?? firebase_auth.FirebaseAuth.instance;

  Future<AuthResult> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      return const AuthResult.loginSuccess();
    } on firebase_auth.FirebaseAuthException catch (e) {
      return e.asAuthResult;
    }
  }

  Future<AuthResult> signUp(
      {required String email, required String password}) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      return const AuthResult.registerSuccess();
    } on firebase_auth.FirebaseAuthException catch (e) {
      return e.asAuthResult;
    } catch (_) {
      return const AuthResult.serverError();
    }
  }

  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

  Stream<User> get user {
    return _firebaseAuth.authStateChanges().map((firebaseUser) {
      final User user =
          firebaseUser == null ? const User.empty() : firebaseUser.toUser;
      return user;
    });
  }
}

extension on firebase_auth.FirebaseAuthException {
  AuthResult get asAuthResult {
    switch (code) {
      case 'invalid-email':
        return const AuthResult.invalidEmail();
      case 'user-disabled':
        return const AuthResult.userDisabled();
      case 'user-not-found':
        return const AuthResult.userNotFound();
      case 'wrong-password':
        return const AuthResult.wrongPassword();
      case 'email-already-in-use':
        return const AuthResult.emailAlreadyInUse();
      case 'operation-not-allowed':
        return const AuthResult.notAllowed();
      case 'weak-password':
        return const AuthResult.weakPassword();
      default:
        return const AuthResult.serverError();
    }
  }
}

extension on firebase_auth.User {
  User get toUser {
    return User(id: uid, email: email, name: displayName, photo: photoURL);
  }
}
