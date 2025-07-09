import 'package:dooit/data/repositories/auth_repositroy.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  AuthRepository authRepository = AuthRepository();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final screenWidth = size.width;
    final buttonWidth = screenWidth * 0.85;
    final buttonHeight = 55.0;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 240),
            Text(
              'Dooit',
              style: TextStyle(
                color: Color(0xff171717),
                fontSize: 40,
                fontFamily: 'Pretendard',
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 180),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: buttonWidth,
                height: buttonHeight,
                decoration: BoxDecoration(
                  color: Color(0xff03C75B),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/images/logo/naver.svg'),
                    SizedBox(width: 10),
                    Text(
                      '네이버로 시작하기',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                authRepository.loginWithKakao(context);
              },
              child: Container(
                width: buttonWidth,
                height: buttonHeight,
                decoration: BoxDecoration(
                  color: Color(0xffFDE500),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/images/logo/kakao.svg'),
                    SizedBox(width: 10),
                    Text(
                      '카카오로 시작하기',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: buttonWidth,
                height: buttonHeight,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Color(0xffD8D8D8)),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/images/logo/google.svg'),
                    SizedBox(width: 10),
                    Text(
                      'Google로 시작하기',
                      style: TextStyle(
                        color: Color(0xff171717),
                        fontSize: 17,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 45),
            Text('비회원 문의하기', style: TextStyle(color: Color(0xff606060))),
          ],
        ),
      ),
    );
  }
}
