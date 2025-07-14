import 'package:dooit/data/repositories/user_repository.dart';
import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  UserRepository userRepository = UserRepository();

  void getUserRepository() async {
    await userRepository.getUserInfo();
    notifyListeners();
  }
}
