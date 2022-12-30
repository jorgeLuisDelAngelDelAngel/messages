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

  Future<void> signIn({required LoginRequestData loginRequestData}) async {
    final AuthUser? user = await _authRepository.signIn(
      loginRequestData: loginRequestData,
    );
    _saveInTemp(user);
  }

  Future<void> signUp({required LoginRequestData loginRequestData}) async {
    final AuthUser? user = await _authRepository.signUp(
      loginRequestData: loginRequestData,
    );
    _saveInTemp(user);
  }

  void signOut({required AuthUser user}) {
    _authRepository.signOut();
    _removeFromTemp(id: user.id);
  }

  Future<void> _saveInTemp(AuthUser? user) async {
    if (user != null && await _tempRepository.exist(id: user.id)) {
      _tempRepository.saveData<AuthUser>(id: user.id, data: user);
    }
  }

  Future<void> _removeFromTemp({required String id}) async {
    if (await _tempRepository.exist(id: id)) _tempRepository.remove(id: id);
  }
}
