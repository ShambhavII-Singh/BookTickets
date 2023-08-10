import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travel_app/utils/appinfolist.dart';
import 'package:travel_app/utils/applayout.dart';
import 'package:travel_app/utils/appstyles.dart';
import 'package:travel_app/widgets/bigtextheading.dart';
import 'package:travel_app/widgets/dashedline.dart';
import 'package:travel_app/widgets/selectortab.dart';
import 'package:travel_app/widgets/smallcircle.dart';
import 'package:travel_app/widgets/ticketview.dart';

class Ticketdisplay extends StatelessWidget {
  const Ticketdisplay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: Stack(
          children: [
            ListView(
              padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getWidthProportion(20),
                  vertical: AppLayout.getHeightProportion(20)),
              children: [
                const Bigtextheading(text: "Tickets"),
                const Selectortab(
                    selectedTab: "Upcoming", unselectedTab: "Previous"),
                SizedBox(
                  width: AppLayout.getScreenWidth() * 0.85,
                  height: AppLayout.getHeightProportion(110),
                  child: Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: AppLayout.getWidthProportion(15)),
                    padding: EdgeInsets.only(
                      left: AppLayout.getWidthProportion(16),
                      right: AppLayout.getWidthProportion(16),
                      top: AppLayout.getHeightProportion(16),
                    ),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(21),
                        topRight: Radius.circular(21),
                      ),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "NYC",
                                  style: Styles.headingStyle3.copyWith(
                                      color: Styles.textColor1,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            const Spacer(), // *push left and right*
                            Smallcircle(color: Styles.lightBlue),
                            Dashedline(color: Styles.lightBlue),
                            Transform.rotate(
                              angle: 1.5,
                              child: Icon(
                                Icons.local_airport_rounded,
                                color: Styles.lightBlue,
                              ),
                            ),
                            Dashedline(color: Styles.lightBlue),
                            Smallcircle(color: Styles.lightBlue),
                            const Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "LDN",
                                  style: Styles.headingStyle3.copyWith(
                                      color: Styles.textColor1,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "New-York",
                              style: Styles.headingStyle3
                                  .copyWith(color: Styles.textColor2),
                            ),
                            const Spacer(),
                            Text(
                              "8H 30M       ",
                              style: Styles.headingStyle3.copyWith(
                                  color: Styles.textColor1,
                                  fontWeight: FontWeight.bold),
                            ),
                            const Spacer(),
                            Text(
                              "London",
                              style: Styles.headingStyle3
                                  .copyWith(color: Styles.textColor2),
                            )
                          ],
                        ),
                        Dashedline(color: Styles.textColor1),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: AppLayout.getScreenWidth() * 0.85,
                  height: AppLayout.getHeightProportion(90),
                  child: Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: AppLayout.getWidthProportion(15)),
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getWidthProportion(16)),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "13 Jul",
                                  style: Styles.headingStyle3.copyWith(
                                      color: Styles.textColor1,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Date",
                                  style: Styles.headingStyle3
                                      .copyWith(color: Styles.textColor2),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "8:00 AM",
                                  style: Styles.headingStyle3.copyWith(
                                      color: Styles.textColor1,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Departure Time",
                                  style: Styles.headingStyle3
                                      .copyWith(color: Styles.textColor2),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "23D",
                                  style: Styles.headingStyle3.copyWith(
                                      color: Styles.textColor1,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Number",
                                  style: Styles.headingStyle3
                                      .copyWith(color: Styles.textColor2),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Dashedline(color: Styles.textColor1),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: AppLayout.getScreenWidth() * 0.85,
                  height: AppLayout.getHeightProportion(90),
                  child: Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: AppLayout.getWidthProportion(15)),
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getWidthProportion(16)),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Shambhavi Singh",
                                  style: Styles.headingStyle3.copyWith(
                                      color: Styles.textColor1,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Passenger",
                                  style: Styles.headingStyle3
                                      .copyWith(color: Styles.textColor2),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "5221 478566",
                                  style: Styles.headingStyle3.copyWith(
                                      color: Styles.textColor1,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Passport",
                                  style: Styles.headingStyle3
                                      .copyWith(color: Styles.textColor2),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Dashedline(color: Styles.textColor1),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: AppLayout.getScreenWidth() * 0.85,
                  height: AppLayout.getHeightProportion(90),
                  child: Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: AppLayout.getWidthProportion(15)),
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getWidthProportion(16)),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "0055 444 77147",
                                  style: Styles.headingStyle3.copyWith(
                                      color: Styles.textColor1,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "E-Ticket Number",
                                  style: Styles.headingStyle3
                                      .copyWith(color: Styles.textColor2),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "B2SG2B",
                                  style: Styles.headingStyle3.copyWith(
                                      color: Styles.textColor1,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Online Booking Number",
                                  style: Styles.headingStyle3
                                      .copyWith(color: Styles.textColor2),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Dashedline(color: Styles.textColor1),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: AppLayout.getScreenWidth() * 0.85,
                  height: AppLayout.getHeightProportion(90),
                  child: Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: AppLayout.getWidthProportion(15)),
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getWidthProportion(16)),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: AppLayout.getWidthProportion(60),
                                      height: AppLayout.getHeightProportion(30),
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/visa.png"),
                                        fit: BoxFit.fitWidth,
                                      )),
                                    ),
                                    Text(
                                      "***2462",
                                      style: Styles.headingStyle3.copyWith(
                                          color: Styles.textColor1,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Text(
                                  "Payment Method",
                                  style: Styles.headingStyle3
                                      .copyWith(color: Styles.textColor2),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "\$249.99",
                                  style: Styles.headingStyle3.copyWith(
                                      color: Styles.textColor1,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Price",
                                  style: Styles.headingStyle3
                                      .copyWith(color: Styles.textColor2),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Dashedline(color: Styles.textColor1),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: AppLayout.getScreenWidth() * 0.85,
                  height: AppLayout.getHeightProportion(110),
                  child: Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: AppLayout.getWidthProportion(15)),
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getWidthProportion(16)),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(21),
                        bottomRight: Radius.circular(21),
                      ),
                    ),
                    child: Container(
                      padding:
                          EdgeInsets.all(AppLayout.getHeightProportion(16)),
                      margin: EdgeInsets.only(
                          bottom: AppLayout.getHeightProportion(15)),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(21),
                        image: const DecorationImage(
                          image: AssetImage("assets/images/barcode.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ),
                Gap(AppLayout.getHeightProportion(20)),
                SizedBox(
                  width: 0.85 * (AppLayout.getScreenWidth()),
                  child: Container(
                    padding:
                        EdgeInsets.only(left: AppLayout.getWidthProportion(16)),
                    child: Ticketview(ticket: ticketList[0]),
                  ),
                ),
                Gap(AppLayout.getHeightProportion(110)),
              ],
            ),
            Column(
              children: [
                Gap(AppLayout.getHeightProportion(269)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Gap(AppLayout.getWidthProportion(25)),
                    Container(
                      width: AppLayout.getWidthProportion(20),
                      height: AppLayout.getHeightProportion(20),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/radio-button.png"),
                          fit: BoxFit.cover,
                        )
                      ),
                    ),
                    const Spacer(),
                    Container(
                      width: AppLayout.getWidthProportion(20),
                      height: AppLayout.getHeightProportion(20),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/radio-button.png"),
                          fit: BoxFit.cover,
                        )
                      ),
                    ),
                    Gap(AppLayout.getWidthProportion(25)),
                  ],
                ),
              ],
            ),
          ],
        ));
  }
}
