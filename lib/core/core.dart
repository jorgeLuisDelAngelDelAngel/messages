export 'package:messages/core/service/services.dart';
export 'package:messages/core/models/domain.dart';
export 'package:messages/core/app/app.dart';

import 'package:messages/core/app/app.dart';
import 'package:messages/core/service/services.dart';

class Core {
  Core._();

  static Core? _instance;
  static late AuthService authService;

  static void init({
    required TempRepository tempRepository,
    required AuthRepository authRepository,
  }) {
    if (_instance != null) throw Exception();
    authService = AuthService.init(
      authRepository: authRepository,
      tempRepository: tempRepository,
    );
    _instance = Core._();
  }
}
