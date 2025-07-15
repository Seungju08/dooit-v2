import 'package:dooit/data/repositories/auth_repositroy.dart';
import 'package:dooit/presentation/screens/my/widgets/custom_card_icon.dart';
import 'package:dooit/presentation/screens/my/widgets/my_list_1.dart';
import 'package:dooit/presentation/screens/my/widgets/my_list_3.dart';
import 'package:dooit/presentation/screens/my/widgets/my_list_2.dart';
import 'package:dooit/presentation/screens/my/widgets/my_list_4.dart';
import 'package:flutter/material.dart';

import '../../providers/notification_provider.dart';

class MyScreen extends StatefulWidget {
  const MyScreen({super.key});

  @override
  State<MyScreen> createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  AuthRepository authRepository = AuthRepository();

  void updateScreen() => setState(() {});

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
      backgroundColor: Color(0xffF6EFE9),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Image.asset('assets/images/my_title.png', width: 140),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      authRepository.logOut(context);
                    },
                    child: Icon(Icons.settings, size: 30, color: Colors.grey),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      width: 140,
                      height: 140,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/images/profile.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Lv.30',
                          style: TextStyle(
                            color: Color(0xff582CBD),
                            fontSize: 20,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          '버피하는 두잇이',
                          style: TextStyle(
                            color: Color(0xff171717),
                            fontSize: 20,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: 70,
                          height: 33,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/star.png', width: 20),
                              Text(
                                '27',
                                style: TextStyle(
                                  color: Color(0xff171717),
                                  fontSize: 15,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(width: 1),
                              Text(
                                '개',
                                style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontSize: 15,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 7),
                        Container(
                          width: 60,
                          height: 33,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '80',
                                style: TextStyle(
                                  color: Color(0xff171717),
                                  fontSize: 15,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(width: 1),
                              Text(
                                'p',
                                style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontSize: 13,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            CustomCardIcon(),
            SizedBox(height: 25),
            Container(
              width: double.infinity,
              height: 80,
              child: Image.asset(
                'assets/images/banner6.png',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 25),
            MyList1(),
            SizedBox(height: 20),
            MyList2(),
            SizedBox(height: 20),
            MyList3(),
            SizedBox(height: 20),
            MyList4(),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
