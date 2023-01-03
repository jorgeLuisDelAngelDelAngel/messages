import 'package:messages/core/models/domain.dart';
import 'package:messages/core/service/services.dart';

class AcountService {
  late AcountRepository _acountRepository;
  late TempRepository _tempRepository;

  AcountService.init({
    required AcountRepository acountRepository,
    required TempRepository tempRepository,
  }) {
    _acountRepository = acountRepository;
    _tempRepository = tempRepository;
  }

  Future<User?> getUser() async {
    return _tempRepository.getData(id: 'user');
  }

  dynamic all() {
    return _tempRepository.all();
  }

  Future<void> newAcount({
    required AuthUser newAcount,
    required LoginRequestData request,
  }) async {
    User? user = await _acountRepository.newAcount(
      authUser: newAcount,
      request: request,
    );
    if (user != null) _tempRepository.saveData<User>(id: 'user', data: user);
  }

  Future<void> editAcount({required User user}) async {
    final bool success = await _acountRepository.editAcount(newUser: user);
    if (success) _tempRepository.updateData<User>(id: user.id, data: user);
  }

  Future<bool> deleteAcount({
    required AuthUser authUser,
    required User user,
  }) async {
    return _acountRepository.deleteAcount(authUser: authUser, user: user);
  }
}
