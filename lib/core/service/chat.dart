import 'package:messages/core/models/domain.dart';

abstract class ChatRepository {
  Chat getChat({required String id});

  List<Chat> getsChats({required User user});

  void newChat({required Chat chat});

  void deleteChat({required String chatId});
}
