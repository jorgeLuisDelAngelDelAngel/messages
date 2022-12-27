import 'package:messages/core/models/domain.dart';

abstract class GroupRepository {
  List<Group> getGroups({required User user});

  Group getGroup({required String groupId});

  void newGroup({required Group group});

  void updateGroup({required groupId, required Group newGroup});

  void deleteGroup({required String groupId});

  void addMember({required String groupId, required User member});

  void removeMember({required String groupId, required String memberId});
}
