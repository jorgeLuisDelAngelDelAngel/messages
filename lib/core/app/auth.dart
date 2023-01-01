import 'package:messages/core/models/domain.dart';
import 'package:messages/core/service/services.dart';

class AuthService {
  late AuthRepository _authRepository;
  late TempRepository _tempRepository;
  late AcountRepository _acountRepository;

  AuthService.init({
    required AuthRepository authRepository,
    required TempRepository tempRepository,
    required AcountRepository acountRepository,
  }) {
    _authRepository = authRepository;
    _tempRepository = tempRepository;
    _acountRepository = acountRepository;
  }

  Future<AuthUser?> getUser() => _authRepository.getUser();

  AuthUserState getUserState() => _authRepository.getUserState();

  Future<User?> signIn({required LoginRequestData request}) async {
    AuthUser? authUser;
    User? user;
    authUser = await _authRepository.signIn(loginRequestData: request);
    if (authUser == null) return null;
    user = await _acountRepository.getUser(request: request);
    if (user == null) return null;
    _tempRepository.saveData(id: 'authUser', data: authUser);
    _tempRepository.saveData(id: 'user', data: user);
    return user;
  }

  Future<User?> signUp({required LoginRequestData request}) async {
    AuthUser? authUser;
    User? user;
    authUser = await _authRepository.signUp(loginRequestData: request);
    if (authUser == null) return null;
    user = await _acountRepository.newAcount(
      authUser: authUser,
      request: request,
    );
    if (user == null) return null;
    _tempRepository.saveData(id: 'authUser', data: authUser);
    _tempRepository.saveData(id: 'user', data: user);
    return user;
  }

  void signOut({required AuthUser user}) {
    _authRepository.signOut();
    _removeFromTemp(id: user.id);
  }

  Future<void> _removeFromTemp({required String id}) async {
    if (await _tempRepository.exist(id: id)) _tempRepository.remove(id: id);
  }
}
