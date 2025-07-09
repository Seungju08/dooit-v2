import 'package:dooit/data/repositories/auth_repositroy.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  AuthRepository authRepository = AuthRepository();

  @override
  void initState() {
    super.initState();
    authRepository.sendTokenToServer(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text(
          'Dooit',
          style: TextStyle(
            color: Color(0xff171717),
            fontSize: 40,
            fontFamily: 'Pretendard',
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );
  }
}
