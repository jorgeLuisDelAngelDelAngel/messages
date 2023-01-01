import 'package:messages/core/service/services.dart';

class Temp extends TempRepository {
  Map<String, dynamic> datas = <String, dynamic>{};

  @override
  T? action<T>({required String id, required Function<T>(T? data) fun}) {
    fun.call(datas[id]);
    return null;
  }

  @override
  Future<bool> exist({required String id}) async {
    return datas.containsKey(id);
  }

  @override
  Future<T> getData<T>({required String id}) async {
    return datas[id];
  }

  @override
  dynamic all() {
    return datas;
  }

  @override
  Future<bool> remove({required String id}) async {
    datas.remove(id);
    return true;
  }

  @override
  Future<void> saveData<T>({required String id, required T data}) async {
    datas.addAll(<String, T>{id: data});
  }

  @override
  Future<bool> updateData<T>({required String id, required T data}) async {
    datas[id] = data;
    return true;
  }
}
