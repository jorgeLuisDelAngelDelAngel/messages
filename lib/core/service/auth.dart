import 'package:messages/core/models/domain.dart';

enum AuthUserState {
  authenticated,
  unauthenticated,
}

abstract class AuthRepository {
  AuthUserState getUserState();

  Future<AuthUser?> getUser();

  Future<AuthUser?> signIn({required LoginRequestData loginRequestData});

  Future<AuthUser?> signUp({required LoginRequestData loginRequestData});

  Future<bool> signOut();
}
