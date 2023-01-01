import 'package:messages/core/core.dart';

class Contacts extends ContactRepository {
  @override
  Future<bool> deleteContact({required String contactId}) async {
    return true;
  }

  @override
  Future<bool> editContact({
    required String contactId,
    required User newContact,
  }) async {
    return true;
  }

  @override
  Future<User?> getContact({required String contactId}) async {
    return null;
  }

  @override
  List<User> getContacts({required User user}) {
    return <User>[];
  }

  @override
  Future<User?> newContact({required User contact}) async {
    return null;
  }
}
