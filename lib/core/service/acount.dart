import 'package:messages/core/models/domain.dart';

abstract class AcountRepository {
  Future<User?> getUser({required LoginRequestData request});

  Future<User?> newAcount({
    required AuthUser authUser,
    required LoginRequestData request,
  });

  Future<bool> editAcount({required User newUser});

  Future<bool> deleteAcount({required AuthUser authUser, required User user});
}
