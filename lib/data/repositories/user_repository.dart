import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class UserRepository {
  Future<void> getUserInfo() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    final access_token = pref.getString('access_token');
    final response = await http.get(
      Uri.parse('https://be-production-e1c4.up.railway.app/api/user/info'),
      headers: {'Bearer': access_token!},
    );

    if (response.statusCode == 200) {
      final responseData = jsonDecode(response.body);
    }
  }
}
