import 'package:messages/core/models/domain.dart';

abstract class AcountRepository {
  User getUser();

  void newAcount({required User newAcount});

  void editAcount({required User newUser});

  void deleteAcount({required String acountId});
}
