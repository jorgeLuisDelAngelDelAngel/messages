import 'package:messages/core/models/domain.dart';
import 'package:messages/core/service/services.dart';

class HistoryService {
  late HistoryRepository _historyRepository;

  HistoryService.init({required HistoryRepository historyRepository}) {
    _historyRepository = historyRepository;
  }

  List<History> getHistories({required User user}) {
    return _historyRepository.getHistories(user: user);
  }

  History getHistory({required String historyId}) {
    return _historyRepository.getHistory(historyId: historyId);
  }

  void newHistory({required History history}) {
    _historyRepository.newHistory(history: history);
  }

  void deleteHistory({required String historyId}) {
    _historyRepository.deleteHistory(historyId: historyId);
  }
}
