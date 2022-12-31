import 'package:messages/core/app/app.dart';
import 'package:messages/core/service/services.dart';

class Core {
  Core._();
  static Core? _instance;

  static late AcountService acountService;
  static late AuthService authService;
  static late ChatService chatService;
  static late ContactService contactService;
  static late GroupService groupService;
  static late HistoryService historyService;

  static Core instance() {
    if (_instance == null) throw Exception();
    return _instance!;
  }

  static init({
    required TempRepository tempRepository,
    required AcountRepository acountRepository,
    required AuthRepository authRepository,
    required ChatRepository chatRepository,
    required ContactRepository contactRepository,
    required GroupRepository groupRepository,
    required HistoryRepository historyRepository,
  }) {
    _instance = Core._();

    acountService = AcountService.init(
      acountRepository: acountRepository,
      tempRepository: tempRepository,
    );

    authService = AuthService.init(
      authRepository: authRepository,
      tempRepository: tempRepository,
    );

    chatService = ChatService.init(
      chatRepository: chatRepository,
      tempRepository: tempRepository,
    );

    contactService = ContactService.init(
      contactRepository: contactRepository,
      tempRepository: tempRepository,
    );

    groupService = GroupService.init(
      groupRepository: groupRepository,
      tempRepository: tempRepository,
    );

    historyService = HistoryService.init(
      historyRepository: historyRepository,
      tempRepository: tempRepository,
    );
  }
}
