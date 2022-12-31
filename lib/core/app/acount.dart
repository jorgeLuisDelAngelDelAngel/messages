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

  Future<User?> getUser({required String id}) async {
    if (await _tempRepository.exist(id: id)) _tempRepository.getData(id: id);
    return _acountRepository.getUser();
  }

  Future<void> newAcount({required AuthUser newAcount}) async {
    User? user = await _acountRepository.newAcount(newAcount: newAcount);
    if (user != null) _tempRepository.saveData<User>(id: user.id, data: user);
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
