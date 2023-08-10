import 'package:flutter/material.dart';
import 'package:travel_app/utils/appstyles.dart';

class Textandoption extends StatelessWidget {
  final String text;
  final String message;
  const Textandoption({Key? key, required this.text, required this.message}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          text,
          style: Styles.headingStyle2,
        ),
        InkWell(
          onTap: () {
            print(message);
          },
          child: Text(
            message,
            style: Styles.headingStyle4,
          ),
        ),
      ],
    );
  }
}
