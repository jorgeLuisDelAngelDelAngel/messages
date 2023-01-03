import 'package:messages/core/models/domain.dart';
import 'package:messages/core/service/services.dart';

class ContactService {
  late ContactRepository _contactRepository;
  late TempRepository _tempRepository;

  ContactService.init({
    required ContactRepository contactRepository,
    required TempRepository tempRepository,
  }) {
    _contactRepository = contactRepository;
    _tempRepository = tempRepository;
  }

  Future<List<User>?> getContacts({required User user}) async {
    if (await _tempRepository.exist(id: 'contacts')) {
      return _tempRepository.getData<List<User>>(id: 'contacts');
    }
    return _contactRepository.getContacts(user: user);
  }

  Future<User?> getContact({required String contactId}) async {
    if (await _tempRepository.exist(id: contactId)) {
      return _tempRepository.getData<User>(id: contactId);
    }
    return _contactRepository.getContact(contactId: contactId);
  }

  Future<User?> newContact({required User contact}) async {
    User? user = await _contactRepository.newContact(contact: contact);
    if (user != null) _tempRepository.saveData<User>(id: user.id, data: user);
    return user;
  }

  Future<void> editContact({
    required String id,
    required User contact,
  }) async {
    final bool success = await _contactRepository.editContact(
      contactId: id,
      newContact: contact,
    );
    if (success) await _tempRepository.updateData<User>(id: id, data: contact);
  }

  void deleteContact({required String contactId}) {
    _contactRepository.deleteContact(contactId: contactId);
    _tempRepository.remove(id: contactId);
  }
}
