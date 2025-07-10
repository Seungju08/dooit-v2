import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class CustomDottedGraph extends StatelessWidget {
  const CustomDottedGraph({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              DottedBorder(
                options: RoundedRectDottedBorderOptions(
                  color: Colors.grey,
                  radius: Radius.circular(20),
                ),
                child: Container(
                  width: 35,
                  height: 125,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(height: 5),
              Text(
                '월',
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 15,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                '16',
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 15,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Column(
            children: [
              DottedBorder(
                options: RoundedRectDottedBorderOptions(
                  color: Colors.grey,
                  radius: Radius.circular(20),
                ),
                child: Container(
                  width: 35,
                  height: 125,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(height: 5),
              Text(
                '월',
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 15,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                '16',
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 15,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Column(
            children: [
              DottedBorder(
                options: RoundedRectDottedBorderOptions(
                  color: Colors.grey,
                  radius: Radius.circular(20),
                ),
                child: Container(
                  width: 35,
                  height: 125,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(height: 5),
              Text(
                '월',
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 15,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                '16',
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 15,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Column(
            children: [
              DottedBorder(
                options: RoundedRectDottedBorderOptions(
                  color: Colors.grey,
                  radius: Radius.circular(20),
                ),
                child: Container(
                  width: 35,
                  height: 125,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(height: 5),
              Text(
                '월',
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 15,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                '16',
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 15,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Column(
            children: [
              DottedBorder(
                options: RoundedRectDottedBorderOptions(
                  color: Colors.grey,
                  radius: Radius.circular(20),
                ),
                child: Container(
                  width: 35,
                  height: 125,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(height: 5),
              Text(
                '월',
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 15,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                '16',
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 15,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Column(
            children: [
              DottedBorder(
                options: RoundedRectDottedBorderOptions(
                  color: Colors.grey,
                  radius: Radius.circular(20),
                ),
                child: Container(
                  width: 35,
                  height: 125,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(height: 5),
              Text(
                '월',
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 15,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                '16',
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 15,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Column(
            children: [
              DottedBorder(
                options: RoundedRectDottedBorderOptions(
                  color: Colors.grey,
                  radius: Radius.circular(20),
                ),
                child: Container(
                  width: 35,
                  height: 125,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(height: 5),
              Text(
                '일',
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 15,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                '22',
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 15,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
