import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travel_app/utils/applayout.dart';
import 'package:travel_app/utils/appstyles.dart';
import 'package:travel_app/widgets/dashedline.dart';
import 'package:travel_app/widgets/smallcircle.dart';



class Ticketview extends StatelessWidget {
  final Map<String, dynamic> ticket;
  const Ticketview({Key? key, required this.ticket}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = AppLayout.getScreenWidth();
    return SizedBox(
      width: width * 0.85, 
      height: AppLayout.getHeightProportion(200),
      child: Container(
        padding: EdgeInsets.only(right: AppLayout.getWidthProportion(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            
            Container(
              padding: EdgeInsets.all(AppLayout.getHeightProportion(16)),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(21),
                    topRight: Radius.circular(21)),
                color: Styles.blueColor,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "${ticket['from']}",
                        style: Styles.headingStyle3
                            .copyWith(color: Styles.textColor3),
                      ),
                      const Spacer(), 
                      Smallcircle(color: Styles.textColor3),
                      Dashedline(color: Styles.textColor3),
                      Transform.rotate(
                        angle: 1.5,
                        child: Icon(
                          Icons.local_airport_rounded,
                          color: Styles.textColor3,
                        ),
                      ),
                      Dashedline(color: Styles.textColor3),
                      Smallcircle(color: Styles.textColor3),
                      const Spacer(),
                      Text(
                        "${ticket['to']}",
                        style: Styles.headingStyle3.copyWith(color: Styles.textColor3),
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeightProportion(3)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "${ticket['fromfull']}",
                        style: Styles.headingStyle4
                            .copyWith(color: Styles.textColor3),
                      ),
                      Gap(AppLayout.getWidthProportion(int.parse("${ticket['left']}"))),
                      Text(
                        "${ticket['duration']}",
                        style: Styles.headingStyle4
                            .copyWith(color: Styles.textColor3),
                      ),
                      Gap(AppLayout.getWidthProportion(int.parse("${ticket['right']}"))),
                      Text(
                        "${ticket['tofull']}",
                        style: Styles.headingStyle4
                            .copyWith(color: Styles.textColor3),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            
            Container(
              color: Color(0xFFE7645E),
              child: Row(
                children: [
                  SizedBox(
                    width: AppLayout.getWidthProportion(10),
                    height: AppLayout.getWidthProportion(10)*2,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Styles.bgColor,
                        borderRadius: BorderRadius.only(
                          topRight:
                              Radius.circular(AppLayout.getWidthProportion(10)),
                          bottomRight:
                              Radius.circular(AppLayout.getWidthProportion(10)),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      height: AppLayout.getHeightProportion(24),
                      child: LayoutBuilder(builder:
                          (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(
                            (constraints.constrainWidth() ~/
                                AppLayout.divisor(10)),
                            (index) => SizedBox(
                              width: AppLayout.getWidthProportion(5),
                              height: AppLayout.getHeightProportion(3),
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  color: Styles.textColor3,
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                  SizedBox(
                    width: AppLayout.getWidthProportion(10),
                    height: AppLayout.getWidthProportion(10)*2,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Styles.bgColor,
                        borderRadius: BorderRadius.only(
                          topLeft:
                              Radius.circular(AppLayout.getWidthProportion(10)),
                          bottomLeft:
                              Radius.circular(AppLayout.getWidthProportion(10)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            
            Container(
              padding: EdgeInsets.all(AppLayout.getHeightProportion(16)),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(21),
                    bottomRight: Radius.circular(21)),
                color: Styles.orangeColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${ticket['date']}",
                        style: Styles.headingStyle3
                            .copyWith(color: Styles.textColor3),
                      ),
                      Gap(AppLayout.getHeightProportion(3)),
                      Text(
                        "Date",
                        style: Styles.headingStyle4
                            .copyWith(color: Styles.textColor3),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "${ticket['time']}",
                        style: Styles.headingStyle3
                            .copyWith(color: Styles.textColor3),
                      ),
                      Gap(AppLayout.getHeightProportion(3)),
                      Text(
                        "Departure Time",
                        style: Styles.headingStyle4
                            .copyWith(color: Styles.textColor3),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "${ticket['number']}",
                        style: Styles.headingStyle3
                            .copyWith(color: Styles.textColor3),
                      ),
                      Gap(AppLayout.getHeightProportion(3)),
                      Text(
                        "Number",
                        style: Styles.headingStyle4
                            .copyWith(color: Styles.textColor3),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
