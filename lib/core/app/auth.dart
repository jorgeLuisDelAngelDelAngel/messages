import 'package:messages/core/models/domain.dart';
import 'package:messages/core/service/services.dart';

class AuthService {
  late AuthRepository _authRepository;

  AuthService.init({required AuthRepository authRepository}) {
    _authRepository = authRepository;
  }

  AuthUserState getUserState() => _authRepository.getUserState();

  User? getUser() => _authRepository.getUser();

  void signIn() => _authRepository.signIn();

  void signUp() => _authRepository.signUp();

  void signOut() => _authRepository.signOut();
}
