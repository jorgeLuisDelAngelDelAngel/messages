import 'package:messages/core/models/domain.dart';
import 'package:messages/core/service/services.dart';

class ChatService {
  late ChatRepository _chatRepository;

  ChatService.init({required ChatRepository chatRepository}) {
    _chatRepository = chatRepository;
  }

  Future<List<Chat>?> getChats({required User user}) async {
    return _chatRepository.getsChats(user: user);
  }

  Future<Chat?> getChat({required String id}) async {
    return _chatRepository.getChat(id: id);
  }

  void newChat({required Chat chat}) {
    _chatRepository.newChat(chat: chat);
  }

  void deleteChat({required String chatId}) {
    _chatRepository.deleteChat(chatId: chatId);
  }

  Future<List<Message>?> getMessages({required String chatId}) async {
    return _chatRepository.getMessages(chatId: chatId);
  }

  Future<Message?> getMessage({required String messageId}) async {
    return _chatRepository.getMessage(messageId: messageId);
  }

  void sendMessage({required Message message}) {
    _chatRepository.sendMessage(message: message);
  }

  void editMessage({required String messageId, required Message newMessage}) {
    _chatRepository.editMessage(messageId: messageId, newMessage: newMessage);
  }

  void deleteMessage({required String messageId}) {
    _chatRepository.deleteMessage(messageId: messageId);
  }
}
