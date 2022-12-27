import 'package:messages/core/models/domain.dart';

abstract class MessageRepository {
  List<Message> getMessages({required String chatId});

  Message getMessage({required String messageId});

  void sendMessage({required Message message});

  void editMessage({required String messageId, required Message newMessage});

  void deleteMessage({required String messageId});
}
