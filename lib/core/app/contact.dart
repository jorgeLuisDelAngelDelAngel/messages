import 'package:messages/core/models/domain.dart';
import 'package:messages/core/service/services.dart';

class ContactService {
  late ContactRepository _contactRepository;

  ContactService.init({required ContactRepository contactRepository}) {
    _contactRepository = contactRepository;
  }

  List<User> getContacts({required User user}) {
    return _contactRepository.getContacts(user: user);
  }

  Future<User?> getContact({required String contactId}) async {
    return _contactRepository.getContact(contactId: contactId);
  }

  void newContact({required User contact}) {
    _contactRepository.newContact(contact: contact);
  }

  void editContact({required String contactId, required User newContact}) {
    _contactRepository.editContact(
      contactId: contactId,
      newContact: newContact,
    );
  }

  void deleteContact({required String contactId}) {
    _contactRepository.deleteContact(contactId: contactId);
  }
}
