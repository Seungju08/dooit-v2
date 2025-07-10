import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../providers/notification_provider.dart';
import 'notification_screen.dart';

class CommunityScreen extends StatefulWidget {
  const CommunityScreen({super.key});

  @override
  State<CommunityScreen> createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> {
  void updateScreen() => setState(() {});

  @override
  void initState() {
    super.initState();
    notificationProvider.addListener(updateScreen);
  }

  @override
  void dispose() {
    notificationProvider.removeListener(updateScreen);
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
                  Image.asset('assets/images/talk_title.png', width: 225),
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
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Color(0xffF1E7DE),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/speaker.svg',
                        width: 16,
                        height: 16,
                      ),
                      SizedBox(width: 10),
                      Text(
                        '두잇토크 이용가이드',
                        style: TextStyle(
                          color: Color(0xff171717),
                          fontSize: 15,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.arrow_circle_right_rounded),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text(
                    '지금 HOT TALK🔥',
                    style: TextStyle(
                      color: Color(0xff171717),
                      fontFamily: 'Pretendard',
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: 100,
                    height: 37,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '더보기',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(width: 5),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 200,
                          height: 140,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '헬신이 알려주는 운동루틴',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  '헬신이 알려주는 운동루틴',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  '헬신이 알려주는 운동루틴',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/icons/eyes.svg',
                                      width: 15,
                                      height: 15,
                                      color: Colors.white.withOpacity(0.7),
                                    ),
                                    SizedBox(width: 3),
                                    Text(
                                      '120',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontFamily: 'Pretendard',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(width: 7),
                                    SvgPicture.asset(
                                      'assets/icons/community.svg',
                                      width: 15,
                                      height: 15,
                                      color: Colors.white.withOpacity(0.7),
                                    ),
                                    SizedBox(width: 3),
                                    Text(
                                      '6',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontFamily: 'Pretendard',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(width: 7),
                                    SvgPicture.asset(
                                      'assets/icons/heart.svg',
                                      width: 15,
                                      height: 15,
                                      color: Colors.white.withOpacity(0.7),
                                    ),
                                    SizedBox(width: 3),
                                    Text(
                                      '10',
                                      style: TextStyle(
                                        color: Colors.white,
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
                      ],
                    ),
                    SizedBox(width: 10),
                    Stack(
                      children: [
                        Container(
                          width: 200,
                          height: 140,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '헬신이 알려주는 운동루틴',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  '헬신이 알려주는 운동루틴',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  '헬신이 알려주는 운동루틴',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/icons/eyes.svg',
                                      width: 15,
                                      height: 15,
                                      color: Colors.white.withOpacity(0.7),
                                    ),
                                    SizedBox(width: 3),
                                    Text(
                                      '120',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontFamily: 'Pretendard',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(width: 7),
                                    SvgPicture.asset(
                                      'assets/icons/community.svg',
                                      width: 15,
                                      height: 15,
                                      color: Colors.white.withOpacity(0.7),
                                    ),
                                    SizedBox(width: 3),
                                    Text(
                                      '6',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontFamily: 'Pretendard',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(width: 7),
                                    SvgPicture.asset(
                                      'assets/icons/heart.svg',
                                      width: 15,
                                      height: 15,
                                      color: Colors.white.withOpacity(0.7),
                                    ),
                                    SizedBox(width: 3),
                                    Text(
                                      '10',
                                      style: TextStyle(
                                        color: Colors.white,
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
                      ],
                    ),
                    SizedBox(width: 10),
                    Stack(
                      children: [
                        Container(
                          width: 200,
                          height: 140,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '헬신이 알려주는 운동루틴',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  '헬신이 알려주는 운동루틴',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  '헬신이 알려주는 운동루틴',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/icons/eyes.svg',
                                      width: 15,
                                      height: 15,
                                      color: Colors.white.withOpacity(0.7),
                                    ),
                                    SizedBox(width: 3),
                                    Text(
                                      '120',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontFamily: 'Pretendard',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(width: 7),
                                    SvgPicture.asset(
                                      'assets/icons/community.svg',
                                      width: 15,
                                      height: 15,
                                      color: Colors.white.withOpacity(0.7),
                                    ),
                                    SizedBox(width: 3),
                                    Text(
                                      '6',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontFamily: 'Pretendard',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(width: 7),
                                    SvgPicture.asset(
                                      'assets/icons/heart.svg',
                                      width: 15,
                                      height: 15,
                                      color: Colors.white.withOpacity(0.7),
                                    ),
                                    SizedBox(width: 3),
                                    Text(
                                      '10',
                                      style: TextStyle(
                                        color: Colors.white,
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
                      ],
                    ),
                    SizedBox(width: 10),
                    Stack(
                      children: [
                        Container(
                          width: 200,
                          height: 140,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '헬신이 알려주는 운동루틴',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  '헬신이 알려주는 운동루틴',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  '헬신이 알려주는 운동루틴',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/icons/eyes.svg',
                                      width: 15,
                                      height: 15,
                                      color: Colors.white.withOpacity(0.7),
                                    ),
                                    SizedBox(width: 3),
                                    Text(
                                      '120',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontFamily: 'Pretendard',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(width: 7),
                                    SvgPicture.asset(
                                      'assets/icons/community.svg',
                                      width: 15,
                                      height: 15,
                                      color: Colors.white.withOpacity(0.7),
                                    ),
                                    SizedBox(width: 3),
                                    Text(
                                      '6',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontFamily: 'Pretendard',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(width: 7),
                                    SvgPicture.asset(
                                      'assets/icons/heart.svg',
                                      width: 15,
                                      height: 15,
                                      color: Colors.white.withOpacity(0.7),
                                    ),
                                    SizedBox(width: 3),
                                    Text(
                                      '10',
                                      style: TextStyle(
                                        color: Colors.white,
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
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 40),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.green, width: 3),
                          ),
                          child: Image.asset('assets/images/window.png'),
                        ),
                        SizedBox(height: 10),
                        Text(
                          '전체',
                          style: TextStyle(
                            color: Color(0xff171717),
                            fontSize: 15,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 7),
                    Column(
                      children: [
                        Container(
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.transparent,
                              width: 3,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          '어른즈',
                          style: TextStyle(
                            color: Color(0xff171717),
                            fontSize: 15,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 7),
                    Column(
                      children: [
                        Container(
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.transparent,
                              width: 3,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          '학생즈',
                          style: TextStyle(
                            color: Color(0xff171717),
                            fontSize: 15,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 7),
                    Column(
                      children: [
                        Container(
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.transparent,
                              width: 3,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          '자유',
                          style: TextStyle(
                            color: Color(0xff171717),
                            fontSize: 15,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 7),
                    Column(
                      children: [
                        Container(
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.transparent,
                              width: 3,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          '모임',
                          style: TextStyle(
                            color: Color(0xff171717),
                            fontSize: 15,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              width: double.infinity,
              height: 500,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(35)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
