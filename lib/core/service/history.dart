import 'package:messages/core/models/domain.dart';

abstract class HistoryRepository {
  Future<List<History>?> getHistories({required User user});

  Future<History?> getHistory({required String historyId});

  Future<bool> newHistory({required History history});

  Future<bool> deleteHistory({required String historyId});
}
