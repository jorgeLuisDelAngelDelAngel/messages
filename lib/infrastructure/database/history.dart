import 'package:messages/core/core.dart';

class HistoryI extends HistoryRepository {
  @override
  Future<bool> deleteHistory({required String historyId}) async {
    return true;
  }

  @override
  Future<List<History>?> getHistories({required User user}) async {
    return null;
  }

  @override
  Future<History?> getHistory({required String historyId}) async {
    return null;
  }

  @override
  Future<bool> newHistory({required History history}) async {
    return true;
  }
}
