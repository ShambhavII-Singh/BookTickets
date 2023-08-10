import 'package:flutter/cupertino.dart';
import 'package:travel_app/utils/applayout.dart';

class Dashedline extends StatelessWidget {
  final Color color;
  const Dashedline({Key? key, required this.color}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: AppLayout.getHeightProportion(24),
        child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          return Flex(
            direction: Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: List.generate(
              (constraints.constrainWidth() ~/ AppLayout.divisor(6)),
              (index) => SizedBox(
                width: AppLayout.getWidthProportion(3),
                height: AppLayout.getHeightProportion(2),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: color,
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
