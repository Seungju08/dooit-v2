import 'package:flutter/material.dart';

class CustomCardIcon extends StatelessWidget {
  const CustomCardIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/images/coin.png',
                    width: 50,
                    height: 50,
                  ),
                ),
              ),
              SizedBox(height: 8),
              Text(
                '교환',
                style: TextStyle(
                  color: Colors.grey.shade800,
                  fontSize: 15,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          Column(
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/images/calender.png',
                    width: 50,
                    height: 50,
                  ),
                ),
              ),
              SizedBox(height: 8),
              Text(
                '체크인',
                style: TextStyle(
                  color: Colors.grey.shade800,
                  fontSize: 15,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          Column(
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/images/medal.png',
                    width: 50,
                    height: 50,
                  ),
                ),
              ),
              SizedBox(height: 8),
              Text(
                '운동 랭킹',
                style: TextStyle(
                  color: Colors.grey.shade800,
                  fontSize: 15,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          Column(
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/images/coupon.png',
                    width: 50,
                    height: 50,
                  ),
                ),
              ),
              SizedBox(height: 8),
              Text(
                '쿠폰',
                style: TextStyle(
                  color: Colors.grey.shade800,
                  fontSize: 15,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
