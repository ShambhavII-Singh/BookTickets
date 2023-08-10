import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travel_app/utils/applayout.dart';
import 'package:travel_app/utils/appstyles.dart';

class Bigtextheading extends StatelessWidget {
  final String text;
  const Bigtextheading({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Gap(AppLayout.getHeightProportion(40)),
        Text(
          text,
          style: Styles.headingStyle1
              .copyWith(fontSize: AppLayout.getWidthProportion(35)),
        ),
        Gap(AppLayout.getHeightProportion(20)),
      ],
    );
  }
}
