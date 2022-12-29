import 'package:messages/core/models/domain.dart';
import 'package:messages/core/service/services.dart';

class AcountService {
  late AcountRepository _acountRepository;

  AcountService.init({required AcountRepository acountRepository}) {
    _acountRepository = acountRepository;
  }

  User getUser() {
    return _acountRepository.getUser();
  }

  void newAcount({required User newAcount}) {
    _acountRepository.newAcount(newAcount: newAcount);
  }

  void editAcount({required User newUser}) {
    _acountRepository.editAcount(newUser: newUser);
  }

  void deleteAcount({required String acountId}) {
    _acountRepository.deleteAcount(acountId: acountId);
  }
}
