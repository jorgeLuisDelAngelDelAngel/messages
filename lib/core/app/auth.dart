import 'package:messages/core/models/domain.dart';
import 'package:messages/core/service/services.dart';

class AuthService {
  late AuthRepository _authRepository;
  late TempRepository _tempRepository;

  AuthService.init({
    required AuthRepository authRepository,
    required TempRepository tempRepository,
  }) {
    _authRepository = authRepository;
    _tempRepository = tempRepository;
  }

  AuthUserState getUserState() => _authRepository.getUserState();

  Future<User?> getUser() async {
    final User? user = await _authRepository.getUser();
    _saveInTemp(user);
    return user;
  }

  Future<void> signIn({required LoginRequestData loginRequestData}) async {
    final User? user = await _authRepository.signIn(
      loginRequestData: loginRequestData,
    );
    _saveInTemp(user);
  }

  Future<void> signUp({required LoginRequestData loginRequestData}) async {
    final User? user = await _authRepository.signUp(
      loginRequestData: loginRequestData,
    );
    _saveInTemp(user);
  }

  void signOut({required User user}) {
    _authRepository.signOut();
    _removeFromTemp(id: user.id);
  }

  Future<void> _saveInTemp(User? user) async {
    if (user != null && await _tempRepository.exist(id: user.id)) {
      _tempRepository.saveData<User>(id: user.id, data: user);
    }
  }

  Future<void> _removeFromTemp({required String id}) async {
    if (await _tempRepository.exist(id: id)) _tempRepository.remove(id: id);
  }
}
