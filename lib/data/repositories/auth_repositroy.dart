import 'dart:convert';

import 'package:dooit/presentation/screens/main_screen.dart';
import 'package:dooit/presentation/screens/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepository {
  /// 카카오 oauth 발급
  Future<void> loginWithKakao(BuildContext context) async {
    await UserApi.instance.loginWithKakaoAccount(); // 카카오 웹 로그인

    final token = await TokenManagerProvider.instance.manager
        .getToken(); // 카카오 토큰 발급
    if (token == null) throw Exception('카카오 토큰 획득 실패'); // 카카오 토큰을 얻지 못 하였을 때

    SharedPreferences pref = await SharedPreferences.getInstance();
    final kakaoAccessToken = token.accessToken;
    pref.setString(
      'oauthAccessToken',
      kakaoAccessToken,
    ); // SharedPreferences에 카카오 토큰 저장
    pref.setString('provider', 'kakao'); // 토큰의 출처: kakao

    await sendTokenToServer(context); // 백엔드에 보내기
  }

  /// 발급받은 oauth 토큰을 백엔드에 전송
  Future<void> sendTokenToServer(BuildContext context) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    final provider = pref.getString('provider'); // 발급받은 oauth의 출처 가져오기
    final oauthAccessToken = pref.getString(
      'oauthAccessToken',
    ); // 발급받은 oauth 토큰 가져오기

    final response = await http.post(
      Uri.parse('https://be-production-e1c4.up.railway.app/api/auth/login'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'access_token': oauthAccessToken,
        'provider': provider,
      }),
    );

    if (response.statusCode == 200) {
      // 로그인에 성공했을 때 로직
      final responseData = jsonDecode(response.body); // json 파싱
      await pref
        ..setString('access_token', responseData['data']['access_token'])
        ..setString(
          'refresh_token',
          responseData['data']['refresh_token'],
        ); // SharedPreference에 토큰과 리프레시 토큰 저장

      print('access_token: ${responseData['data']['access_token']}');

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MainScreen()),
      ); // 메인 페이지로 이동
    } else {
      // 로그인에 실패했을 때 로직
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SignInScreen()),
      ); // 초기 토큰이 유효한지 판별 후 로그인 화면으로 이동시켜주기 위해 필요
    }
  }

  /// 로그아웃 (토큰 무효화)
  Future<void> logOut(BuildContext context) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    final refresh_token = pref.getString('refresh_token');
    final access_token = pref.getString('access_token');

    final response = await http.post(
      Uri.parse('https://be-production-e1c4.up.railway.app/api/auth/logout'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $access_token',
      },
      body: jsonEncode({'refresh_token': refresh_token}),
    );

    /// 로그아웃에 성공했을 때 로직
    if (response.statusCode == 200) {
      await pref.remove('access_token'); // SharedPreferences에 저장되있는 토큰 삭제
      await pref.remove('refresh_token');
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SignInScreen()),
      ); // SignIn 페이지로 이동
    }
  }
}
