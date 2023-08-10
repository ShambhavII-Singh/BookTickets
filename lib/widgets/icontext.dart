import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travel_app/utils/applayout.dart';
import 'package:travel_app/utils/appstyles.dart';

class Icontext extends StatelessWidget {
  final IconData icon;
  final String text;
  const Icontext({Key? key, required this.icon, required this.text})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: AppLayout.getHeightProportion(12),
          horizontal: AppLayout.getWidthProportion(12)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppLayout.getHeightProportion(10)),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: const Color(0xFFBFC2DF),
          ),
          Gap(AppLayout.getWidthProportion(10)),
          Text(
            text,
            style: Styles.textStyle,
          ),
        ],
      ),
    );
  }
}
