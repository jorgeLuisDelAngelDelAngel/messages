import 'package:messages/core/models/domain.dart';

abstract class ChatRepository {
  Chat getChat({required String id});

  List<Chat> getsChats({required User user});

  void newChat({required Chat chat});

  void deleteChat({required String chatId});

  List<Message> getMessages({required String chatId});

  Message getMessage({required String messageId});

  void sendMessage({required Message message});

  void editMessage({required String messageId, required Message newMessage});

  void deleteMessage({required String messageId});
}
