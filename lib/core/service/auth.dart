import 'package:messages/core/models/domain.dart';

enum AuthUserState {
  authenticated,
  unauthenticated,
}

abstract class AuthRepository {
  AuthUserState getUserState();

  Future<User?> getUser();

  Future<User?> signIn({required LoginRequestData loginRequestData});

  Future<User?> signUp({required LoginRequestData loginRequestData});

  Future<bool> signOut();
}
