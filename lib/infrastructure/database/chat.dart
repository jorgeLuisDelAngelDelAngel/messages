import 'package:messages/core/core.dart';

class ChatI extends ChatRepository {
  @override
  Future<bool> deleteChat({required String chatId}) async {
    return true;
  }

  @override
  Future<bool> deleteMessage({required String messageId}) async {
    return true;
  }

  @override
  Future<bool> editMessage({
    required String messageId,
    required Message newMessage,
  }) async {
    return true;
  }

  @override
  Future<Chat?> getChat({required String id}) async {
    return null;
  }

  @override
  Future<Message?> getMessage({required String messageId}) async {
    return null;
  }

  @override
  Future<List<Message>?> getMessages({required String chatId}) async {
    return null;
  }

  @override
  Future<List<Chat>?> getsChats({required User user}) async {
    return null;
  }

  @override
  Future<Chat> newChat({required Chat chat}) async {
    return chat;
  }

  @override
  Future<bool> sendMessage({required Message message}) async {
    return true;
  }
}
