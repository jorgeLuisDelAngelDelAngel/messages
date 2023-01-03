import 'package:messages/core/models/domain.dart';
import 'package:messages/core/service/services.dart';

class HistoryService {
  late HistoryRepository _historyRepository;
  late TempRepository _tempRepository;

  HistoryService.init({
    required HistoryRepository historyRepository,
    required TempRepository tempRepository,
  }) {
    _historyRepository = historyRepository;
    _tempRepository = tempRepository;
  }

  Future<List<History>?> getHistories({required User user}) async {
    if (await _tempRepository.exist(id: 'history')) {
      return _tempRepository.getData(id: 'history');
    }
    return _historyRepository.getHistories(user: user);
  }

  Future<History?> getHistory({required String historyId}) async {
    if (await _tempRepository.exist(id: historyId)) {
      return _tempRepository.getData(id: historyId);
    }
    return _historyRepository.getHistory(historyId: historyId);
  }

  void newHistory({required History history}) {
    _historyRepository.newHistory(history: history);
    _tempRepository.saveData<History>(id: 'history', data: history);
  }

  void deleteHistory({required String historyId}) {
    _historyRepository.deleteHistory(historyId: historyId);
    _tempRepository.remove(id: historyId);
  }
}
