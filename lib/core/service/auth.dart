import 'package:messages/core/models/domain.dart';

enum AuthUserState {
  authenticated,
  unauthenticated,
}

abstract class AuthRepository {
  AuthUserState getUserState();

  User? getUser();

  User? signIn();

  User? signUp();

  bool signOut();
}
