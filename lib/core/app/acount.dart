import 'package:messages/core/models/domain.dart';
import 'package:messages/core/service/services.dart';

class AcountService {
  late AcountRepository _acountRepository;

  AcountService.init({required AcountRepository acountRepository}) {
    _acountRepository = acountRepository;
  }

  Future<User?> getUser() async {
    return _acountRepository.getUser();
  }

  void newAcount({required AuthUser newAcount}) {
    _acountRepository.newAcount(newAcount: newAcount);
  }

  void editAcount({required User newUser}) {
    _acountRepository.editAcount(newUser: newUser);
  }

  void deleteAcount({required AuthUser authUser, required User user}) {
    _acountRepository.deleteAcount(authUser: authUser, user: user);
  }
}
