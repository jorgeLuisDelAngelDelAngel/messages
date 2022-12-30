import 'package:messages/core/models/domain.dart';

abstract class ChatRepository {
  Future<Chat?> getChat({required String id});

  Future<List<Chat>?> getsChats({required User user});

  Future<Chat> newChat({required Chat chat});

  Future<bool> deleteChat({required String chatId});

  Future<List<Message>?> getMessages({required String chatId});

  Future<Message?> getMessage({required String messageId});

  Future<bool> sendMessage({required Message message});

  Future<bool> editMessage({
    required String messageId,
    required Message newMessage,
  });

  Future<bool> deleteMessage({required String messageId});
}
