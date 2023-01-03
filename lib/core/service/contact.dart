import 'package:messages/core/models/domain.dart';

abstract class ContactRepository {
  List<User> getContacts({required User user});

  Future<User?> getContact({required String contactId});

  Future<User?> newContact({required User contact});

  Future<bool> editContact({
    required String contactId,
    required User newContact,
  });

  Future<bool> deleteContact({required String contactId});
}
