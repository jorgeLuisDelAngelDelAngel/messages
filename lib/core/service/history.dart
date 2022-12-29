import 'package:messages/core/models/domain.dart';

abstract class HistoryRepository {
  List<History> getHistories({required User user});

  History getHistory({required String historyId});

  void newHistory({required History history});

  void deleteHistory({required String historyId});
}
