abstract class TempRepository {
  Future<bool> exist({required String id});

  Future<void> saveData<T>({required String id, required T data});

  Future<T> getData<T>({required String id});

  Future<bool> remove({required String id});

  Future<bool> updateData<T>({required String id, required T data});

  T? action<T>({
    required String id,
    required dynamic Function<T>(T? data) fun,
  });

  dynamic all();
}
