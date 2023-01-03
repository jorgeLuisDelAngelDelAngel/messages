import 'dart:math';

import 'package:messages/core/models/domain.dart';
import 'package:messages/core/service/services.dart';

class Auth extends AuthRepository {
  AuthUserState? _state;
  AuthUser? _authUser;

  @override
  Future<AuthUser?> getUser() async => _authUser;
  @override
  AuthUserState getUserState() => _state ?? AuthUserState.unauthenticated;

  @override
  Future<AuthUser?> signIn({required LoginRequestData loginRequestData}) async {
    _authUser = AuthUser(id: '${Random().nextInt(100)}');
    _state = AuthUserState.authenticated;
    await Future<void>.delayed(const Duration(seconds: 3));
    return _authUser;
  }

  @override
  Future<AuthUser?> signUp({required LoginRequestData loginRequestData}) async {
    _authUser = AuthUser(id: '${Random().nextInt(100)}');
    _state = AuthUserState.authenticated;
    await Future<void>.delayed(const Duration(seconds: 3));
    return _authUser;
  }

  @override
  Future<bool> signOut() async {
    _state = AuthUserState.unauthenticated;
    _authUser = null;
    Future<void>.delayed(const Duration(seconds: 3));
    return true;
  }
}
