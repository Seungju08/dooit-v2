import 'package:flutter/material.dart';

class ChallengeProvider extends ChangeNotifier {
  bool isChallenge = false;

  void challenge() async {
    isChallenge = !isChallenge;
    notifyListeners();
  }
}
