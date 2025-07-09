import 'package:dooit/presentation/providers/notification_provider.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  updateScreen() => setState(() {});

  @override
  void initState() {
    super.initState();
    notificationProvider.addListener(updateScreen);
  }

  @override
  void dispose() {
    super.dispose();
    notificationProvider.removeListener(updateScreen);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.keyboard_arrow_left, size: 30),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        '알림',
                        style: TextStyle(
                          color: Color(0xff171717),
                          fontFamily: 'Pretendard',
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: () {
                          notificationProvider.readAll();
                        },
                        child: Text(
                          '모두 읽음',
                          style: TextStyle(
                            color: Color(0xff171717),
                            fontSize: 15,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                SizedBox(width: 20),
                Text(
                  '이번 주',
                  style: TextStyle(
                    color: Colors.grey.shade900,
                    fontSize: 17,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            GestureDetector(
              onTap: () {
                notificationProvider.read(0);
              },
              child: Container(
                width: double.infinity,
                height: 130,
                decoration: BoxDecoration(
                  color: notificationProvider.isRead[0]
                      ? Colors.white
                      : Color(0xffF8F5FE),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: 30),
                      Image.asset(
                        'assets/images/not_sound.png',
                        width: 25,
                        height: 25,
                      ),
                      SizedBox(width: 7),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '챌린지 바로 시작 가능한거 알아? 🤔',
                            style: TextStyle(
                              color: Color(0xff171717),
                              fontSize: 15,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            '오늘부터 시작하는 챌린지 당일에도 참여 가능하데!',
                            style: TextStyle(
                              color: Colors.grey.shade800,
                              fontSize: 13,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            '지금 바로 도전하고, 목표 달성 GO GO!',
                            style: TextStyle(
                              color: Colors.grey.shade800,
                              fontSize: 13,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            '2025.07.09 12:00',
                            style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: 13,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                notificationProvider.read(1);
              },
              child: Container(
                width: double.infinity,
                height: 130,
                decoration: BoxDecoration(
                  color: notificationProvider.isRead[1]
                      ? Colors.white
                      : Color(0xffF8F5FE),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: 30),
                      Image.asset(
                        'assets/images/not_sound.png',
                        width: 25,
                        height: 25,
                      ),
                      SizedBox(width: 7),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '운동하면 별이?!🌟?',
                            style: TextStyle(
                              color: Color(0xff171717),
                              fontSize: 15,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            '타이머 켜고 공부하면 별 GET!',
                            style: TextStyle(
                              color: Colors.grey.shade800,
                              fontSize: 13,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            '두잇존에서 체크인하면 내일 아침 한번 더 GET!',
                            style: TextStyle(
                              color: Colors.grey.shade800,
                              fontSize: 13,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            '2025.07.08 10:00',
                            style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: 13,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                notificationProvider.read(2);
              },
              child: Container(
                width: double.infinity,
                height: 130,
                decoration: BoxDecoration(
                  color: notificationProvider.isRead[2]
                      ? Colors.white
                      : Color(0xffF8F5FE),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: 30),
                      Image.asset(
                        'assets/images/not_pen.png',
                        width: 25,
                        height: 25,
                      ),
                      SizedBox(width: 7),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '운동 리포트 도착 💌',
                            style: TextStyle(
                              color: Color(0xff171717),
                              fontSize: 15,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            '지난주 1일 출석해서 00h 03m 운동시간을 기록했어요.',
                            style: TextStyle(
                              color: Colors.grey.shade800,
                              fontSize: 13,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            '이번 달 운동시간도 확인해 보세요.',
                            style: TextStyle(
                              color: Colors.grey.shade800,
                              fontSize: 13,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            '2025.07.08 9:00',
                            style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: 13,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 20),
                Text(
                  '이전 알림',
                  style: TextStyle(
                    color: Colors.grey.shade900,
                    fontSize: 17,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                notificationProvider.read(3);
              },
              child: Container(
                width: double.infinity,
                height: 105,
                decoration: BoxDecoration(
                  color: notificationProvider.isRead[3]
                      ? Colors.white
                      : Color(0xffF8F5FE),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: 30),
                      Image.asset(
                        'assets/images/not_sound.png',
                        width: 25,
                        height: 25,
                      ),
                      SizedBox(width: 7),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '👀근처 가까운 헬스장이 궁금하다구?',
                            style: TextStyle(
                              color: Color(0xff171717),
                              fontSize: 15,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            '두잇 맵 사용하면 주변 헬스장 완 전 정 복!',
                            style: TextStyle(
                              color: Colors.grey.shade800,
                              fontSize: 13,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            '2025.07.07 18:00',
                            style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: 13,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                notificationProvider.read(4);
              },
              child: Container(
                width: double.infinity,
                height: 130,
                decoration: BoxDecoration(
                  color: notificationProvider.isRead[4]
                      ? Colors.white
                      : Color(0xffF8F5FE),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: 30),
                      Image.asset(
                        'assets/images/not_sound.png',
                        width: 25,
                        height: 25,
                      ),
                      SizedBox(width: 7),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '집에서도 기록할 수 있는 타이머 🏠💪🏻',
                            style: TextStyle(
                              color: Color(0xff171717),
                              fontSize: 15,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            '두잇 타이머는 언제 어디서나 기록 가능!',
                            style: TextStyle(
                              color: Colors.grey.shade800,
                              fontSize: 13,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            '운동 시간도 기록하고, 별도 챙기세요 ⭐️',
                            style: TextStyle(
                              color: Colors.grey.shade800,
                              fontSize: 13,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            '2025.07.07 16:30',
                            style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: 13,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                notificationProvider.read(5);
              },
              child: Container(
                width: double.infinity,
                height: 130,
                decoration: BoxDecoration(
                  color: notificationProvider.isRead[5]
                      ? Colors.white
                      : Color(0xffF8F5FE),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: 30),
                      Image.asset(
                        'assets/images/not_star.png',
                        width: 25,
                        height: 25,
                      ),
                      SizedBox(width: 7),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '두잇 프로필을 마저 만들어보세요!',
                            style: TextStyle(
                              color: Color(0xff171717),
                              fontSize: 15,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            '두잇 프로필을 모두 완성하고 나도 헬신 등극!',
                            style: TextStyle(
                              color: Colors.grey.shade800,
                              fontSize: 13,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            '프로필을 완성해 나의 운동 랭크를 찾으세요',
                            style: TextStyle(
                              color: Colors.grey.shade800,
                              fontSize: 13,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            '2025.07.07 16:00',
                            style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: 13,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                notificationProvider.read(6);
              },
              child: Container(
                width: double.infinity,
                height: 130,
                decoration: BoxDecoration(
                  color: notificationProvider.isRead[6]
                      ? Colors.white
                      : Color(0xffF8F5FE),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: 30),
                      Image.asset(
                        'assets/images/not_sound.png',
                        width: 25,
                        height: 25,
                      ),
                      SizedBox(width: 7),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '두잇에 가입한걸 환영해요! ☺️',
                            style: TextStyle(
                              color: Color(0xff171717),
                              fontSize: 15,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            '두잇 가이드를 확인하면서 건강해져요',
                            style: TextStyle(
                              color: Colors.grey.shade800,
                              fontSize: 13,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            'Step by Step으로 나도 헬신 도전!',
                            style: TextStyle(
                              color: Colors.grey.shade800,
                              fontSize: 13,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            '2025.07.07 15:50',
                            style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: 13,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 60),
          ],
        ),
      ),
    );
  }
}
