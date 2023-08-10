import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travel_app/utils/applayout.dart';
import 'package:travel_app/utils/appstyles.dart';

class Profilepage extends StatelessWidget {
const Profilepage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidthProportion(16)),
        children: [
          Gap(AppLayout.getHeightProportion(40)),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: AppLayout.getWidthProportion(86),
                height: AppLayout.getHeightProportion(86),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/logo.png"),
                    fit: BoxFit.cover,
                  )
                ),
              ),
              Gap(AppLayout.getWidthProportion(20)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "BookTickets0904",
                            style: Styles.headingStyle1.copyWith(fontSize: 23),
                          ),
                          Text(
                            "New-York",
                            style: Styles.headingStyle3,
                          ),
                        ],
                      ),
                      Gap(AppLayout.getWidthProportion(60)),
                      Text(
                        "Edit",
                        style: TextStyle(
                          color: Styles.blueColor,
                          decoration: TextDecoration.underline,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: AppLayout.getHeightProportion(3)),
                    padding: EdgeInsets.all(AppLayout.getHeightProportion(5)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: AppLayout.getWidthProportion(3)),
                          padding: EdgeInsets.all(AppLayout.getHeightProportion(3)),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 252, 34, 198),
                          ),
                          child: const Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        const Text(
                          "Premium Status",
                          style: TextStyle(color: Color(0xFF526799), fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Gap(AppLayout.getHeightProportion(20)),
          Stack(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: AppLayout.getHeightProportion(20)),
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidthProportion(25), vertical: AppLayout.getHeightProportion(15)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(21),
                  color: Styles.blueColor,
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: AppLayout.getWidthProportion(10)),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: Styles.blueColor,
                        size: 40,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "You've got a new award",
                          style: Styles.headingStyle1.copyWith(color: Colors.white),
                        ),
                        Text(
                          "You have completed 150 flights \nthis year",
                          style: Styles.headingStyle3.copyWith(color: Colors.white),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                top: -33,
                right: -50,
                child: Container(
                  padding:
                      EdgeInsets.all(AppLayout.getHeightProportion(30)),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                          width: 18, color: const Color.fromARGB(255, 0, 38, 255)),
                      color: Colors.transparent),
                ),
              ),
            ],
          ),
          Text(
            "Accumalated miles:",
            style: Styles.headingStyle2,
          ),
          Gap(AppLayout.getHeightProportion(15)),
          Center(
            child: Text(
              "192802",
              style: Styles.headingStyle1.copyWith(fontSize: 50),
            ),
          ),
          Gap(AppLayout.getHeightProportion(15)),
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidthProportion(15)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Miles accured",
                      style: Styles.headingStyle3,
                    ),
                    Text(
                      "13 July 2023",
                      style: Styles.headingStyle3,
                    ),
                  ],
                ),
                Gap(AppLayout.getHeightProportion(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "23042",
                          style: Styles.headingStyle2,
                        ),
                        Text(
                          "Miles",
                          style: Styles.headingStyle3,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Airline CO",
                          style: Styles.headingStyle2,
                        ),
                        Text(
                          "Received from",
                          style: Styles.headingStyle3,
                        ),
                      ],
                    ),
                  ],
                ),
                Gap(AppLayout.getHeightProportion(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "52430",
                          style: Styles.headingStyle2,
                        ),
                        Text(
                          "Miles",
                          style: Styles.headingStyle3,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Exuma",
                          style: Styles.headingStyle2,
                        ),
                        Text(
                          "Received from",
                          style: Styles.headingStyle3,
                        ),
                      ],
                    ),
                  ],
                ), Gap(AppLayout.getHeightProportion(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "2486",
                          style: Styles.headingStyle2,
                        ),
                        Text(
                          "Miles",
                          style: Styles.headingStyle3,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "MacDonald's",
                          style: Styles.headingStyle2,
                        ),
                        Text(
                          "Received from",
                          style: Styles.headingStyle3,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Gap(AppLayout.getHeightProportion(15)),
          Center(
            child: Text(
              "How to get more miles?",
              style: TextStyle(
                color: Styles.blueColor,
                decoration: TextDecoration.underline,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}