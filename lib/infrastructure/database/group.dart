import 'package:messages/core/core.dart';

class GroupI extends GroupRepository {
  @override
  Future<bool> addMember(
      {required String groupId, required User member}) async {
    return true;
  }

  @override
  Future<bool> deleteGroup({required String groupId}) async {
    return true;
  }

  @override
  Future<Group?> getGroup({required String groupId}) async {
    return null;
  }

  @override
  Future<List<Group>?> getGroups({required User user}) async {
    return null;
  }

  @override
  Future<Group?> newGroup({required Group group}) async {
    return null;
  }

  @override
  Future<bool> removeMember({
    required String groupId,
    required String memberId,
  }) async {
    return true;
  }

  @override
  Future<bool> updateGroup({required groupId, required Group newGroup}) async {
    return true;
  }
}
