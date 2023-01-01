import 'dart:math';

import 'package:messages/core/models/domain.dart';
import 'package:messages/core/service/services.dart';

class Acount extends AcountRepository {
  Map<String, User> acounts = <String, User>{};

  @override
  Future<bool> deleteAcount({
    required AuthUser authUser,
    required User user,
  }) async {
    acounts.remove(user.id);
    return true;
  }

  @override
  Future<bool> editAcount({required User newUser}) async {
    acounts[newUser.id] = newUser;
    return true;
  }

  @override
  Future<User?> getUser({required LoginRequestData request}) async {
    try {
      return acounts.values.firstWhere(
        (User element) => (element.email == request.email),
      );
    } catch (_) {
      return null;
    }
  }

  @override
  Future<User?> newAcount({
    required AuthUser authUser,
    required LoginRequestData request,
  }) async {
    //llamadas a la base de datos y creacion de nuevo usuario
    final User user = User(
        id: '${Random().nextInt(100)}',
        name: request.name,
        active: true,
        phone: '${Random().nextInt(100)}',
        email: request.email,
        state: 'Iam new here',
        bio: 'Hello everone !!!');
    acounts.addAll(<String, User>{user.id: user});
    return user;
  }
}
