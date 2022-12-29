import 'package:messages/core/models/domain.dart';
import 'package:messages/core/service/services.dart';

class ChatService {
  late ChatRepository _chatRepository;

  ChatService.init({required ChatRepository chatRepository}) {
    _chatRepository = chatRepository;
  }

  List<Chat> getChats({required User user}) {
    return _chatRepository.getsChats(user: user);
  }

  Chat getChat({required String id}) {
    return _chatRepository.getChat(id: id);
  }

  void newChat({required Chat chat}) {
    _chatRepository.newChat(chat: chat);
  }

  void deleteChat({required String chatId}) {
    _chatRepository.deleteChat(chatId: chatId);
  }

  List<Message> getMessages({required String chatId}) {
    return _chatRepository.getMessages(chatId: chatId);
  }

  Message getMessage({required String messageId}) {
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
