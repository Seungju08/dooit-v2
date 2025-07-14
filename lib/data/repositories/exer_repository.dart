import 'dart:convert';

import 'package:dooit/data/models/exer_model.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

ExerRepository exerRepository = ExerRepository();

class ExerRepository {
  ExerModel? exerModel;

  Future<void> getTime() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    final access_token = pref.getString('access_token');

    final response = await http.get(
      Uri.parse('https://be-production-e1c4.up.railway.app/api/exer/time'),
      headers: {'Authorization': 'Bearer ${access_token!}'},
    );

    if (response.statusCode == 200) {
      final responseData = jsonDecode(response.body);
      exerModel = ExerModel.fromJson(responseData);
    }
  }

  String formatMinutesToFixedHourMinute(int minutes) {
    final hours = (minutes ~/ 60).toString().padLeft(2, '0');
    final mins = (minutes % 60).toString().padLeft(2, '0');
    return '${hours}h ${mins}m';
  }

  String getWeeklyExerciseMessage(int minutes) {
    if (minutes <= 0) return '이번 주 운동 기록이 없어요 😫';
    if (minutes < 60) return '이번 주는 거의 안 움직였어요';
    if (minutes < 180) return '그래도 몸 좀 풀긴 했네요! 👍';
    if (minutes < 360) return '운동 습관 들이기 좋아요!';
    if (minutes < 600) return '와! 운동 루틴이 잡혀가고 있어요! 🔥';
    return '프로 운동러 멋져요~! 🏆';
  }
}
