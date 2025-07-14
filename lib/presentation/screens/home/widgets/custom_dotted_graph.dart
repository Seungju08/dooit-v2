import 'package:dooit/data/repositories/exer_repository.dart';
import 'package:dooit/presentation/providers/home_provider.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class CustomDottedGraph extends StatefulWidget {
  const CustomDottedGraph({super.key});

  @override
  State<CustomDottedGraph> createState() => _CustomDottedGraphState();
}

class _CustomDottedGraphState extends State<CustomDottedGraph> {
  void updateScreen() => setState(() {});

  List<String> weeks = ['월', '화', '수', '목', '금', '토', '일'];

  Color getGradientColor(int duration) {
    final ratio = (duration / 100).clamp(0.0, 1.0);
    return Color.lerp(Colors.white, Colors.blue.shade800, ratio)!;
  }

  @override
  void initState() {
    super.initState();
    homeProvider.addListener(updateScreen);
  }

  @override
  void dispose() {
    homeProvider.removeListener(updateScreen);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(7, (index) {
          return Column(
            children: [
              (exerRepository.exerModel?.weekStats[index].duration ?? 0) == 0
                  ? DottedBorder(
                      options: RoundedRectDottedBorderOptions(
                        color: Colors.grey,
                        radius: Radius.circular(20),
                        strokeWidth: 1,
                      ),
                      child: Container(
                        width: 35,
                        height: 121,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    )
                  : Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            width: 40,
                            height: 125,
                            color: Colors.grey.shade300,
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: FractionallySizedBox(
                                heightFactor:
                                    (exerRepository
                                                .exerModel!
                                                .weekStats[index]
                                                .duration /
                                            100)
                                        .clamp(0.0, 1.0),
                                child: Container(
                                  width: 40,
                                  decoration: BoxDecoration(
                                    color: getGradientColor(
                                      exerRepository
                                          .exerModel!
                                          .weekStats[index]
                                          .duration,
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
              SizedBox(height: 5),
              Text(
                weeks[index],
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 15,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                '${exerRepository.exerModel?.weekStats[index].workDate.split('-').last}',
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 15,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
