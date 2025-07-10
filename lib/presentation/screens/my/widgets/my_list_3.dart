import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyList3 extends StatelessWidget {
  const MyList3({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        width: double.infinity,
        height: 210,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(35),
        ),
        child: Column(
          children: [
            SizedBox(height: 25),
            Row(
              children: [
                SizedBox(width: 20),
                Text(
                  '두잇 소식',
                  style: TextStyle(
                    color: Colors.grey.shade800,
                    fontSize: 14,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: double.infinity,
                height: 50,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 10),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/star.svg',
                        width: 20,
                        height: 20,
                      ),
                      SizedBox(width: 8),
                      Text(
                        '이벤트',
                        style: TextStyle(
                          color: Color(0xff171717),
                          fontSize: 15,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.keyboard_arrow_right_rounded,
                        size: 30,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 10),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/document.svg',
                        width: 20,
                        height: 20,
                      ),
                      SizedBox(width: 10),
                      Text(
                        '두잇 가이드',
                        style: TextStyle(
                          color: Color(0xff171717),
                          fontSize: 15,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.keyboard_arrow_right_rounded,
                        size: 30,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 10),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/speaker.svg',
                        width: 20,
                        height: 20,
                      ),
                      SizedBox(width: 10),
                      Text(
                        '공지사항',
                        style: TextStyle(
                          color: Color(0xff171717),
                          fontSize: 15,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.keyboard_arrow_right_rounded,
                        size: 30,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
