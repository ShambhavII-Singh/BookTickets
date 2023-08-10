import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travel_app/utils/applayout.dart';
import 'package:travel_app/utils/appstyles.dart';
import 'package:travel_app/widgets/bigtextheading.dart';
import 'package:travel_app/widgets/icontext.dart';
import 'package:travel_app/widgets/selectortab.dart';
import 'package:travel_app/widgets/textandoption.dart';

class Searchscreen extends StatelessWidget {
  const Searchscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidthProportion(20),
            vertical: AppLayout.getHeightProportion(20)),
        children: [
          const Bigtextheading(text: "What are\nyou looking for?"),
          const Selectortab(selectedTab: "Airlines", unselectedTab: "Hotels"),
          const Icontext(icon: Icons.flight_takeoff_rounded, text: "Departure"),
          Gap(AppLayout.getHeightProportion(20)),
          const Icontext(icon: Icons.flight_land_rounded, text: "Arrival"),
          Gap(AppLayout.getHeightProportion(25)),
          Container(
              padding: EdgeInsets.symmetric(
                  vertical: AppLayout.getHeightProportion(18),
                  horizontal: AppLayout.getWidthProportion(15)),
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(AppLayout.getHeightProportion(10)),
                color: const Color(0xD91130CE),
              ),
              child: Center(
                child: Text(
                  "Find Tickets",
                  style: Styles.textStyle
                      .copyWith(color: Colors.white, fontSize: 18),
                ),
              )),
          Gap(AppLayout.getHeightProportion(40)),
          const Textandoption(text: "Upcoming Flights", message: "View All"),
          Gap(AppLayout.getHeightProportion(20)),
          Row( 
            children: [
              Container(
                width: AppLayout.getScreenWidth() *
                    0.44, // *ask device for its width*
                height: AppLayout.getHeightProportion(400),
                padding:
                    EdgeInsets.only(right: AppLayout.getWidthProportion(16)),
                child: SizedBox(
                  child: Column(children: [
                    Container(
                      padding: EdgeInsets.all(AppLayout.getWidthProportion(16)),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: const Color.fromARGB(255, 240, 199, 235),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // *show the hotel room picture*
                          Container(
                            height: AppLayout.getHeightProportion(180),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/images/airplane.jpg"),
                              ),
                            ),
                          ),
                          Gap(AppLayout.getHeightProportion(10)),
                          Text(
                            "20% OFF",
                            style: Styles.headingStyle2
                                .copyWith(color: Styles.orangeColor),
                          ),
                          Gap(AppLayout.getHeightProportion(3)),
                          Text(
                            "on Business Class tickets for AirIndia Customers!",
                            style: Styles.headingStyle3
                                .copyWith(color: Styles.orangeColor),
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        width: AppLayout.getScreenWidth() *
                            0.44, // *ask device for its width*
                        height: AppLayout.getHeightProportion(196),
                        padding: EdgeInsets.only(
                            left: AppLayout.getWidthProportion(2)),
                        child: Column(children: [
                          Container(
                            padding: EdgeInsets.all(
                                AppLayout.getWidthProportion(16)),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              color: const Color(0xFF3AB8B8),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Discounts \nfor survey!",
                                  style: Styles.headingStyle2
                                      .copyWith(color: Colors.white),
                                ),
                                Gap(AppLayout.getHeightProportion(3)),
                                Text(
                                  "Take a short survey about\nour services \nnow",
                                  style: Styles.headingStyle3
                                      .copyWith(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ]),
                      ),
                      Positioned(
                        top: -40,
                        right: -45,
                        child: Container(
                          padding:
                              EdgeInsets.all(AppLayout.getHeightProportion(30)),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 18, color: const Color(0xFF189999)),
                              color: Colors.transparent),
                        ),
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeightProportion(10)),
                  Container(
                    width: AppLayout.getScreenWidth() *
                        0.44, // *ask device for its width*
                    height: AppLayout.getHeightProportion(196),
                    padding: EdgeInsets.only(
                        left: AppLayout.getWidthProportion(2)),
                    child: Column(children: [
                      Container(
                        padding: EdgeInsets.all(
                            AppLayout.getWidthProportion(16)),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          color: Color.fromARGB(255, 128, 255, 0),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Take Love...",
                              style: Styles.headingStyle2.copyWith(
                                  color: Styles.orangeColor,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            Gap(AppLayout.getHeightProportion(5)),
                            RichText(
                                text: const TextSpan(children: [
                              TextSpan(
                                text: '  😘',
                                style: TextStyle(fontSize: 25),
                              ),
                              TextSpan(
                                text: '😍',
                                style: TextStyle(fontSize: 50),
                              ),
                              TextSpan(
                                text: '🥰    ',
                                style: TextStyle(fontSize: 25),
                              ),
                            ]))
                          ],
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
