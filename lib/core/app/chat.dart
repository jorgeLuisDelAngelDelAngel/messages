import 'package:messages/core/models/domain.dart';
import 'package:messages/core/service/services.dart';

class ChatService {
  late ChatRepository _chatRepository;
  late TempRepository _tempRepository;

  ChatService.init({
    required ChatRepository chatRepository,
    required TempRepository tempRepository,
  }) {
    _chatRepository = chatRepository;
    _tempRepository = tempRepository;
  }

  Future<List<Chat>?> getChats({required User user}) async {
    if (await _tempRepository.exist(id: 'chats')) {
      return _tempRepository.getData<List<Chat>?>(id: 'chats');
    }
    return _chatRepository.getsChats(user: user);
  }

  Future<Chat?> getChat({required String id}) async {
    if (await _tempRepository.exist(id: id)) {
      return _tempRepository.getData<Chat?>(id: id);
    }
    return _chatRepository.getChat(id: id);
  }

  void newChat({required Chat chat}) {
    _chatRepository.newChat(chat: chat);
    _tempRepository.saveData<Chat>(id: chat.id, data: chat);
  }

  void deleteChat({required String chatId}) {
    _chatRepository.deleteChat(chatId: chatId);
    _tempRepository.remove(id: chatId);
  }

  Future<List<Message>?> getMessages({required String chatId}) async {
    if (await _tempRepository.exist(id: chatId)) {
      return _tempRepository.getData<List<Message>?>(id: chatId);
    }
    return _chatRepository.getMessages(chatId: chatId);
  }

  Future<Message?> getMessage({required String messageId}) async {
    if (await _tempRepository.exist(id: messageId)) {
      return _tempRepository.getData<Message?>(id: messageId);
    }
    return _chatRepository.getMessage(messageId: messageId);
  }

  void sendMessage({required Message message}) {
    _chatRepository.sendMessage(message: message);
    _tempRepository.saveData<Message>(id: message.id, data: message);
  }

  void editMessage({required String messageId, required Message newMessage}) {
    _chatRepository.editMessage(messageId: messageId, newMessage: newMessage);
    _tempRepository.updateData(id: messageId, data: newMessage);
  }

  void deleteMessage({required String messageId}) {
    _chatRepository.deleteMessage(messageId: messageId);
    _tempRepository.remove(id: messageId);
  }
}
