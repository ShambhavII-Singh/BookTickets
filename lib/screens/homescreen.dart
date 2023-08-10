import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travel_app/widgets/hotelview.dart';
import 'package:travel_app/widgets/ticketview.dart';
import 'package:travel_app/utils/appinfolist.dart';
import 'package:travel_app/utils/applayout.dart';
import 'package:travel_app/utils/appstyles.dart';
import 'package:travel_app/widgets/textandoption.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getWidthProportion(20),
                vertical: AppLayout.getHeightProportion(5)),
            child: Column(
              children: [
                Gap(AppLayout.getHeightProportion(40)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          message(),
                          style: Styles.headingStyle3,
                        ),
                        Gap(AppLayout.getHeightProportion(5)),
                        Text(
                          "Book Tickets",
                          style: Styles.headingStyle1,
                        ),
                      ],
                    ),
                    Container(
                      height: AppLayout.getHeightProportion(50),
                      width: AppLayout.getWidthProportion(50),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/logo.png"),
                        ),
                      ),
                    ),
                  ],
                ),
                Gap(AppLayout.getHeightProportion(25)),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD),
                  ),
                  padding: EdgeInsets.symmetric(
                      horizontal: AppLayout.getWidthProportion(12),
                      vertical: AppLayout.getHeightProportion(12)),
                  child: Row(
                    children: [
                      const Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Color.fromARGB(255, 94, 91, 91),
                      ),
                      Text(
                        "Search",
                        style: Styles.headingStyle3,
                      ),
                    ],
                  ),
                ),
                Gap(AppLayout.getWidthProportion(40)),
                const Textandoption(text: "Upcoming Flights", message: "View All"),
              ],
            ),
          ),
          Gap(AppLayout.getHeightProportion(15)),
          SingleChildScrollView(
            padding: EdgeInsets.only(
                left: AppLayout.getWidthProportion(20),
                right: AppLayout.getWidthProportion(4)),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: ticketList
                  .map((ticket) => Ticketview(ticket: ticket))
                  .toList(),
            ),
          ),
          Gap(AppLayout.getHeightProportion(15)),
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getWidthProportion(20),
                vertical: AppLayout.getHeightProportion(5)),
            child: const Textandoption(text: "Hotels", message: "View All"),
          ),
          Gap(AppLayout.getHeightProportion(15)),
          SingleChildScrollView(
            padding: EdgeInsets.only(
                left: AppLayout.getWidthProportion(20),
                right: AppLayout.getWidthProportion(4)),
            scrollDirection: Axis.horizontal,
            child: Row(
              children:
                  hotelList.map((hotel) => Hotelview(hotel: hotel)).toList(),
            ),
          ),
          Gap(AppLayout.getHeightProportion(15)),
        ],
      ),
    );
  }
}
