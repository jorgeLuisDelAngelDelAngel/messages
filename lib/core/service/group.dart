import 'package:messages/core/models/domain.dart';

abstract class GroupRepository {
  Future<List<Group>?> getGroups({required User user});

  Future<Group?> getGroup({required String groupId});

  Future<Group?> newGroup({required Group group});

  Future<bool> updateGroup({required groupId, required Group newGroup});

  Future<bool> deleteGroup({required String groupId});

  Future<bool> addMember({required String groupId, required User member});

  Future<bool> removeMember({
    required String groupId,
    required String memberId,
  });
}
