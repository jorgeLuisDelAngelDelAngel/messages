import 'package:messages/core/models/domain.dart';
import 'package:messages/core/service/services.dart';

class GroupService {
  late GroupRepository _groupRepository;
  late TempRepository _tempRepository;

  GroupService.init({
    required GroupRepository groupRepository,
    required TempRepository tempRepository,
  }) {
    _groupRepository = groupRepository;
    _tempRepository = tempRepository;
  }

  Future<List<Group>?> getGroups({required User user}) async {
    if (await _tempRepository.exist(id: 'groups')) {
      return _tempRepository.getData(id: 'groups');
    }
    return _groupRepository.getGroups(user: user);
  }

  Future<Group?> getGroup({required String groupId}) async {
    if (await _tempRepository.exist(id: groupId)) {
      return _tempRepository.getData(id: groupId);
    }
    return _groupRepository.getGroup(groupId: groupId);
  }

  Future<Group?> newGroup({required Group group}) async {
    Group? res = await _groupRepository.newGroup(group: group);
    if (res != null) _tempRepository.saveData(id: group.id, data: group);
    return res;
  }

  Future<void> updateGroup({required groupId, required Group newGroup}) async {
    final bool success = await _groupRepository.updateGroup(
      groupId: groupId,
      newGroup: newGroup,
    );
    if (success) {
      await _tempRepository.updateData<Group>(id: groupId, data: newGroup);
    }
  }

  void deleteGroup({required String groupId}) {
    _groupRepository.deleteGroup(groupId: groupId);
    _tempRepository.remove(id: groupId);
  }

  void addMember({required String groupId, required User member}) {
    _groupRepository.addMember(groupId: groupId, member: member);
  }

  void removeMember({required String groupId, required String memberId}) {
    _groupRepository.removeMember(groupId: groupId, memberId: memberId);
  }
}
