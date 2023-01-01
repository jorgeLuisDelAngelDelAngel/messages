import 'package:flutter/material.dart';
import 'package:messages/core/core.dart';
import 'package:messages/infrastructure/infrastructure.dart';
import 'package:messages/ui/init/init.dart';

void main() {
  Core.inicialize(
    tempRepository: Temp(),
    acountRepository: Acount(),
    authRepository: Auth(),
    chatRepository: ChatI(),
    contactRepository: Contacts(),
    groupRepository: GroupI(),
    historyRepository: HistoryI(),
  );
  runApp(InitPage());
}
