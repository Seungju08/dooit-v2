import 'package:dooit/presentation/providers/challenge_provider.dart';
import 'package:flutter/material.dart';
import '../providers/notification_provider.dart';
import 'notification_screen.dart';

class ChallengeScreen extends StatefulWidget {
  const ChallengeScreen({super.key});

  @override
  State<ChallengeScreen> createState() => _ChallengeScreenState();
}

class _ChallengeScreenState extends State<ChallengeScreen> {
  ChallengeProvider challengeProvider = ChallengeProvider();

  void updateScreen() => setState(() {});

  @override
  void initState() {
    super.initState();
    challengeProvider.addListener(updateScreen);
  }

  @override
  void dispose() {
    challengeProvider.removeListener(updateScreen);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6EFE9),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Image.asset('assets/images/challenge_title.png', width: 230),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NotificationScreen(),
                        ),
                      );
                    },
                    child: Stack(
                      children: [
                        Icon(Icons.notifications, color: Colors.grey, size: 30),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Container(
                            width: 7,
                            height: 7,
                            decoration: BoxDecoration(
                              color: notificationProvider.isRead.contains(false)
                                  ? Colors.red
                                  : Colors.transparent,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: AnimatedContainer(
                width: double.infinity,
                height: 190,
                decoration: BoxDecoration(
                  color: challengeProvider.isChallenge
                      ? Colors.green
                      : Colors.indigo,
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(100),
                  ),
                ),
                duration: Duration(seconds: 2),
                child: Center(
                  child: Stack(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AnimatedOpacity(
                            duration: Duration(seconds: 1),
                            opacity: challengeProvider.isChallenge ? 0 : 1,
                            child: Text(
                              '지금 도전중인 챌린지가 없어요',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w800,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          AnimatedSlide(
                            duration: Duration(seconds: 2),
                            offset: challengeProvider.isChallenge
                                ? Offset(2, 0)
                                : Offset(0, 0),
                            child: Image.asset(
                              'assets/images/cloud_with_lightning.png',
                              width: 130,
                              height: 100,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AnimatedOpacity(
                            opacity: challengeProvider.isChallenge ? 1 : 0,
                            duration: Duration(seconds: 2),
                            child: AnimatedSlide(
                              duration: Duration(seconds: 2),
                              offset: challengeProvider.isChallenge
                                  ? Offset(0, 0)
                                  : Offset(1, 0),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/images/fire.png',
                                    width: 70,
                                    height: 70,
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    '진행중: 하루 2시간 운동 챌린지',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Pretendard',
                                      fontWeight: FontWeight.w800,
                                      fontSize: 20,
                                    ),
                                  ),
                                  Text(
                                    '25.07.08 (화)',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Pretendard',
                                      fontWeight: FontWeight.w800,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 25),
            Container(
              width: double.infinity,
              height: 920,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(35)),
              ),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Container(
                          width: 65,
                          height: 32,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '전체',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(width: 5),
                              Text(
                                '12',
                                style: TextStyle(color: Colors.orange),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 5),
                        Container(
                          height: 30,
                          padding: const EdgeInsets.symmetric(horizontal: 7),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(color: Colors.grey.shade300),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '공식 챌린지',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(width: 5),
                              Text(
                                '12',
                                style: TextStyle(color: Colors.orange),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 5),
                        Container(
                          height: 30,
                          padding: const EdgeInsets.symmetric(horizontal: 7),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(color: Colors.grey.shade300),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '지금 바로 시작',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(width: 5),
                              Text('6', style: TextStyle(color: Colors.orange)),
                            ],
                          ),
                        ),
                        SizedBox(width: 5),
                        Container(
                          height: 30,
                          padding: const EdgeInsets.symmetric(horizontal: 7),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(color: Colors.grey.shade300),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '하루만',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(width: 5),
                              Text('6', style: TextStyle(color: Colors.orange)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Container(
                          height: 30,
                          padding: const EdgeInsets.symmetric(horizontal: 7),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(color: Colors.grey.shade300),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '출석',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(width: 5),
                              Text('2', style: TextStyle(color: Colors.orange)),
                            ],
                          ),
                        ),
                        SizedBox(width: 5),
                        Container(
                          height: 30,
                          padding: const EdgeInsets.symmetric(horizontal: 7),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(color: Colors.grey.shade300),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '운동시간',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(width: 5),
                              Text('4', style: TextStyle(color: Colors.orange)),
                            ],
                          ),
                        ),
                        SizedBox(width: 5),
                        Container(
                          height: 30,
                          padding: const EdgeInsets.symmetric(horizontal: 7),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(color: Colors.grey.shade300),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.search,
                                color: Colors.grey.shade400,
                                size: 20,
                              ),
                              Text(
                                '검색',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    height: 100,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/challenge_icon1.png',
                            width: 100,
                            height: 100,
                          ),
                          SizedBox(width: 10),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 40,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      color: Color(0xffE8E1FF),
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      '하루만',
                                      style: TextStyle(
                                        color: Color(0xff5A28AF),
                                        fontSize: 12,
                                        fontFamily: 'Pretendard',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Container(
                                    width: 40,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      color: Color(0xffE8E1FF),
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      '1시간',
                                      style: TextStyle(
                                        color: Color(0xff5A28AF),
                                        fontSize: 12,
                                        fontFamily: 'Pretendard',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 4),
                              Text(
                                '1시간 운동 GO GO',
                                style: TextStyle(
                                  color: Color(0xff171717),
                                  fontSize: 17,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                '25.07.08(화)',
                                style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontSize: 13,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 4),
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/images/challenge_profile.png',
                                    width: 20,
                                    height: 20,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    '두잇이',
                                    style: TextStyle(
                                      color: Colors.grey.shade700,
                                      fontSize: 14,
                                      fontFamily: 'Pretendard',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(),
                  Container(
                    width: double.infinity,
                    height: 100,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/challenge_icon1.png',
                            width: 100,
                            height: 100,
                          ),
                          SizedBox(width: 10),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 40,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      color: Color(0xffE8E1FF),
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      '하루만',
                                      style: TextStyle(
                                        color: Color(0xff5A28AF),
                                        fontSize: 12,
                                        fontFamily: 'Pretendard',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Container(
                                    width: 40,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      color: Color(0xffE8E1FF),
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      '2시간',
                                      style: TextStyle(
                                        color: Color(0xff5A28AF),
                                        fontSize: 12,
                                        fontFamily: 'Pretendard',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 4),
                              Text(
                                '하루 2시간 운동 챌린지',
                                style: TextStyle(
                                  color: Color(0xff171717),
                                  fontSize: 17,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                '25.07.08(화)',
                                style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontSize: 13,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 4),
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/images/challenge_profile.png',
                                    width: 20,
                                    height: 20,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    '두잇이',
                                    style: TextStyle(
                                      color: Colors.grey.shade700,
                                      fontSize: 14,
                                      fontFamily: 'Pretendard',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(),
                  Container(
                    width: double.infinity,
                    height: 100,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/challenge_icon1.png',
                            width: 100,
                            height: 100,
                          ),
                          SizedBox(width: 10),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 40,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      color: Color(0xffE8E1FF),
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      '하루만',
                                      style: TextStyle(
                                        color: Color(0xff5A28AF),
                                        fontSize: 12,
                                        fontFamily: 'Pretendard',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Container(
                                    width: 40,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      color: Color(0xffE8E1FF),
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      '4시간',
                                      style: TextStyle(
                                        color: Color(0xff5A28AF),
                                        fontSize: 12,
                                        fontFamily: 'Pretendard',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 4),
                              Text(
                                '하루 4시간 운동왕',
                                style: TextStyle(
                                  color: Color(0xff171717),
                                  fontSize: 17,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                '25.07.08(화)',
                                style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontSize: 13,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 4),
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/images/challenge_profile.png',
                                    width: 20,
                                    height: 20,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    '두잇이',
                                    style: TextStyle(
                                      color: Colors.grey.shade700,
                                      fontSize: 14,
                                      fontFamily: 'Pretendard',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(),
                  Container(
                    width: double.infinity,
                    height: 100,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/challenge_icon1.png',
                            width: 100,
                            height: 100,
                          ),
                          SizedBox(width: 10),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 40,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      color: Color(0xffE8E1FF),
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      '하루만',
                                      style: TextStyle(
                                        color: Color(0xff5A28AF),
                                        fontSize: 12,
                                        fontFamily: 'Pretendard',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Container(
                                    width: 40,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      color: Color(0xffE8E1FF),
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      '10시간',
                                      style: TextStyle(
                                        color: Color(0xff5A28AF),
                                        fontSize: 12,
                                        fontFamily: 'Pretendard',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 4),
                              Text(
                                '하루 10시간 도전가능?',
                                style: TextStyle(
                                  color: Color(0xff171717),
                                  fontSize: 17,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                '25.07.08(화)',
                                style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontSize: 13,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 4),
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/images/challenge_profile.png',
                                    width: 20,
                                    height: 20,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    '두잇이',
                                    style: TextStyle(
                                      color: Colors.grey.shade700,
                                      fontSize: 14,
                                      fontFamily: 'Pretendard',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(),
                  Container(
                    width: double.infinity,
                    height: 100,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/challenge_icon1.png',
                            width: 100,
                            height: 100,
                          ),
                          SizedBox(width: 10),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 40,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      color: Color(0xffE8E1FF),
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      '출석',
                                      style: TextStyle(
                                        color: Color(0xff5A28AF),
                                        fontSize: 12,
                                        fontFamily: 'Pretendard',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Container(
                                    width: 48,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      color: Color(0xffE8E1FF),
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      '1주 동안',
                                      style: TextStyle(
                                        color: Color(0xff5A28AF),
                                        fontSize: 12,
                                        fontFamily: 'Pretendard',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Container(
                                    width: 40,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      color: Color(0xffE8E1FF),
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      '주 5일',
                                      style: TextStyle(
                                        color: Color(0xff5A28AF),
                                        fontSize: 12,
                                        fontFamily: 'Pretendard',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 4),
                              Text(
                                '1주 5일 출석 챌린지',
                                style: TextStyle(
                                  color: Color(0xff171717),
                                  fontSize: 17,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                '25.07.08(화) - 25.07.14(화)',
                                style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontSize: 13,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 4),
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/images/challenge_profile.png',
                                    width: 20,
                                    height: 20,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    '두잇이',
                                    style: TextStyle(
                                      color: Colors.grey.shade700,
                                      fontSize: 14,
                                      fontFamily: 'Pretendard',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(),
                  Container(
                    width: double.infinity,
                    height: 100,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/challenge_icon1.png',
                            width: 100,
                            height: 100,
                          ),
                          SizedBox(width: 10),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 40,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      color: Color(0xffE8E1FF),
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      '출석',
                                      style: TextStyle(
                                        color: Color(0xff5A28AF),
                                        fontSize: 12,
                                        fontFamily: 'Pretendard',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Container(
                                    width: 48,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      color: Color(0xffE8E1FF),
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      '1주 동안',
                                      style: TextStyle(
                                        color: Color(0xff5A28AF),
                                        fontSize: 12,
                                        fontFamily: 'Pretendard',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Container(
                                    width: 40,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      color: Color(0xffE8E1FF),
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      '주 3일',
                                      style: TextStyle(
                                        color: Color(0xff5A28AF),
                                        fontSize: 12,
                                        fontFamily: 'Pretendard',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 4),
                              Text(
                                '1주 3일 출석 챌린지',
                                style: TextStyle(
                                  color: Color(0xff171717),
                                  fontSize: 17,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                '25.07.08(화) - 25.07.14(화)',
                                style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontSize: 13,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 4),
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/images/challenge_profile.png',
                                    width: 20,
                                    height: 20,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    '두잇이',
                                    style: TextStyle(
                                      color: Colors.grey.shade700,
                                      fontSize: 14,
                                      fontFamily: 'Pretendard',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(),
                  Container(
                    width: double.infinity,
                    height: 100,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/challenge_icon1.png',
                            width: 100,
                            height: 100,
                          ),
                          SizedBox(width: 10),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 50,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      color: Color(0xffE8E1FF),
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      '운동시간',
                                      style: TextStyle(
                                        color: Color(0xff5A28AF),
                                        fontSize: 12,
                                        fontFamily: 'Pretendard',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Container(
                                    width: 45,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      color: Color(0xffE8E1FF),
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      '3일동안',
                                      style: TextStyle(
                                        color: Color(0xff5A28AF),
                                        fontSize: 12,
                                        fontFamily: 'Pretendard',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Container(
                                    width: 40,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      color: Color(0xffE8E1FF),
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      '8시간',
                                      style: TextStyle(
                                        color: Color(0xff5A28AF),
                                        fontSize: 12,
                                        fontFamily: 'Pretendard',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 4),
                              Text(
                                '3일간 8시간 챌린지',
                                style: TextStyle(
                                  color: Color(0xff171717),
                                  fontSize: 17,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                '25.07.09(수) - 25.07.12(토)',
                                style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontSize: 13,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 4),
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/images/challenge_profile.png',
                                    width: 20,
                                    height: 20,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    '두잇이',
                                    style: TextStyle(
                                      color: Colors.grey.shade700,
                                      fontSize: 14,
                                      fontFamily: 'Pretendard',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          challengeProvider.challenge();
        },
        backgroundColor: Colors.black,
        shape: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
        icon: Icon(Icons.add, size: 30, color: Colors.white),
        label: Text(
          '만들기',
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontFamily: 'Pretendard',
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
