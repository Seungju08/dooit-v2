import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomTalkCard extends StatelessWidget {
  const CustomTalkCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 140,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey,
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadiusGeometry.circular(
                                  100,
                                ),
                                child: Image.asset(
                                  'assets/images/challenge_profile.png',
                                ),
                              ),
                            ),
                            SizedBox(width: 5),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      '김찰스',
                                      style: TextStyle(
                                        color: Color(0xff171717),
                                        fontSize: 15,
                                        fontFamily: 'Pretendard',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(width: 2),
                                    Text(
                                      'Lv.900',
                                      style: TextStyle(
                                        color: Color(0xff582CBD),
                                        fontSize: 14,
                                        fontFamily: 'Pretendard',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  '방금 전',
                                  style: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontSize: 14,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Container(
                              width: 40,
                              height: 20,
                              decoration: BoxDecoration(
                                color: Color(0xffE9E1FF),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Center(
                                child: Text(
                                  '자유',
                                  style: TextStyle(
                                    color: Color(0xff522EAA),
                                    fontSize: 14,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(
                              '헬신 인증',
                              style: TextStyle(
                                color: Color(0xff171717),
                                fontSize: 18,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 70,
                      height: 70,
                      child: ClipRRect(
                        borderRadius: BorderRadiusGeometry.circular(15),
                        child: Center(
                          child: Image.asset(
                            'assets/images/talk_img.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Row(children: [Text('어느정도로 운동에 미쳐야 헬신이 되는지 알려드리겠습니다.')]),
                SizedBox(height: 10),
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/eyes.svg',
                      width: 15,
                      height: 15,
                      color: Colors.grey.shade400,
                    ),
                    SizedBox(width: 2),
                    Text('1'),
                    SizedBox(width: 7),
                    SvgPicture.asset(
                      'assets/icons/community.svg',
                      width: 15,
                      height: 15,
                      color: Colors.grey.shade400,
                    ),
                    SizedBox(width: 2),
                    Text('0'),
                    SizedBox(width: 7),
                    SvgPicture.asset(
                      'assets/icons/heart.svg',
                      width: 15,
                      height: 15,
                      color: Colors.grey.shade400,
                    ),
                    SizedBox(width: 2),
                    Text('1'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
