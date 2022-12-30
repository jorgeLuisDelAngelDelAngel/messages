import 'package:messages/core/models/domain.dart';
import 'package:messages/core/service/services.dart';

class GroupService {
  late GroupRepository _groupRepository;

  GroupService.init({required GroupRepository groupRepository}) {
    _groupRepository = groupRepository;
  }

  Future<List<Group>?> getGroups({required User user}) async {
    return _groupRepository.getGroups(user: user);
  }

  Future<Group?> getGroup({required String groupId}) {
    return _groupRepository.getGroup(groupId: groupId);
  }

  void newGroup({required Group group}) {
    _groupRepository.newGroup(group: group);
  }

  void updateGroup({required groupId, required Group newGroup}) {
    _groupRepository.updateGroup(groupId: groupId, newGroup: newGroup);
  }

  void deleteGroup({required String groupId}) {
    _groupRepository.deleteGroup(groupId: groupId);
  }

  void addMember({required String groupId, required User member}) {
    _groupRepository.addMember(groupId: groupId, member: member);
  }

  void removeMember({required String groupId, required String memberId}) {
    _groupRepository.removeMember(groupId: groupId, memberId: memberId);
  }
}
