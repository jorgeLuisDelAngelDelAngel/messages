import 'package:messages/core/models/domain.dart';

abstract class ContactRepository {
  List<User> getContacts({required User user});

  User getContact({required String contactId});

  void newContact({required User contact});

  void editContact({required String contactId, required User newContact});

  void deleteContact({required String contactId});
}
