import 'package:flutter/material.dart';

NotificationProvider notificationProvider = NotificationProvider();

class NotificationProvider extends ChangeNotifier {
  List<bool> isRead = [false, false, false, false, false, false, false];

  void read(int index) {
    isRead[index] = true;
    notifyListeners();
  }

  void readAll() {
    isRead
      ..[0] = true
      ..[1] = true
      ..[2] = true
      ..[3] = true
      ..[4] = true
      ..[5] = true
      ..[6] = true;
    notifyListeners();
  }
}
