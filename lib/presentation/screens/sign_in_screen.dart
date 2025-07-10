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
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 230),
            Text(
              'Dooit',
              style: TextStyle(
                color: Color(0xff171717),
                fontSize: 40,
                fontFamily: 'Pretendard',
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 200),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 350,
                height: 55,
                decoration: BoxDecoration(
                  color: Color(0xff03C75B),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 23),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/images/logo/naver.svg'),
                      Spacer(),
                      Text(
                        '네이버로 시작하기',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Spacer(),
                      SvgPicture.asset(
                        'assets/images/logo/naver.svg',
                        color: Colors.transparent,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                authRepository.loginWithKakao(context);
              },
              child: Container(
                width: 350,
                height: 55,
                decoration: BoxDecoration(
                  color: Color(0xffFDE500),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/images/logo/kakao.svg'),
                      Spacer(),
                      Text(
                        '카카오로 시작하기',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Spacer(),
                      SvgPicture.asset(
                        'assets/images/logo/kakao.svg',
                        color: Colors.transparent,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 350,
                height: 55,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Color(0xffD8D8D8)),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/images/logo/google.svg'),
                      Spacer(),
                      Text(
                        'Google로 시작하기',
                        style: TextStyle(
                          color: Color(0xff171717),
                          fontSize: 17,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Spacer(),
                      SvgPicture.asset(
                        'assets/images/logo/google.svg',
                        color: Colors.transparent,
                      ),
                    ],
                  ),
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
