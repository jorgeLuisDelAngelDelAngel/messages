export 'package:messages/core/app/app.dart';
export 'package:messages/core/models/domain.dart';
export 'package:messages/core/service/services.dart';

import 'package:messages/core/app/app.dart';
import 'package:messages/core/service/services.dart';

class Core {
  Core._();
  static final Core _instance = Core._();
  static Core get instance => _instance;

  late AcountService acountService;
  late AuthService authService;
  late ChatService chatService;
  late ContactService contactService;
  late GroupService groupService;
  late HistoryService historyService;

  static void inicialize({
    required TempRepository tempRepository,
    required AcountRepository acountRepository,
    required AuthRepository authRepository,
    required ChatRepository chatRepository,
    required ContactRepository contactRepository,
    required GroupRepository groupRepository,
    required HistoryRepository historyRepository,
  }) {
    _instance._init(
      tempRepository: tempRepository,
      acountRepository: acountRepository,
      authRepository: authRepository,
      chatRepository: chatRepository,
      contactRepository: contactRepository,
      groupRepository: groupRepository,
      historyRepository: historyRepository,
    );
  }

  void _init({
    required TempRepository tempRepository,
    required AcountRepository acountRepository,
    required AuthRepository authRepository,
    required ChatRepository chatRepository,
    required ContactRepository contactRepository,
    required GroupRepository groupRepository,
    required HistoryRepository historyRepository,
  }) {
    acountService = AcountService.init(
      acountRepository: acountRepository,
      tempRepository: tempRepository,
    );

    authService = AuthService.init(
      authRepository: authRepository,
      tempRepository: tempRepository,
      acountRepository: acountRepository,
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
