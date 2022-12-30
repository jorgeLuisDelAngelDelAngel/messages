import 'package:messages/core/models/domain.dart';

abstract class AcountRepository {
  Future<User?> getUser();

  Future<bool> newAcount({required AuthUser newAcount});

  Future<bool> editAcount({required User newUser});

  Future<bool> deleteAcount({required AuthUser authUser, required User user});
}
