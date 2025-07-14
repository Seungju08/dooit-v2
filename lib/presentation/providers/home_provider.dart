import 'package:dooit/data/repositories/exer_repository.dart';
import 'package:flutter/material.dart';

HomeProvider homeProvider = HomeProvider();

class HomeProvider extends ChangeNotifier {
  void getTime() async {
    await exerRepository.getTime();
    notifyListeners();
  }
}
