import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travel_app/utils/applayout.dart';

class Selectortab extends StatelessWidget {
  final String selectedTab;
  final String unselectedTab;
  const Selectortab({Key? key, required this.selectedTab, required this.unselectedTab}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(3.5),
          decoration: BoxDecoration(
            borderRadius:
                BorderRadius.circular(AppLayout.getHeightProportion(50)),
            color: const Color(0xFFF4F6FD),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: AppLayout.getScreenWidth() * 0.42,
                padding: EdgeInsets.symmetric(
                    vertical: AppLayout.getHeightProportion(7)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(AppLayout.getHeightProportion(50))),
                  color: Colors.white,
                ),
                child: Center(
                  child: Text(selectedTab),
                ),
              ),
              Container(
                width: AppLayout.getScreenWidth() * 0.44,
                padding: EdgeInsets.symmetric(
                    vertical: AppLayout.getHeightProportion(7)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                      right:
                          Radius.circular(AppLayout.getHeightProportion(50))),
                  color: Colors.transparent,
                ),
                child: Center(
                  child: Text(unselectedTab),
                ),
              )
            ],
          ),
        ),
        Gap(AppLayout.getHeightProportion(20)),
      ],
    );
  }
}
