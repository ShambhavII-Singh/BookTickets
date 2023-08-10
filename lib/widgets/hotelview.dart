import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import 'package:travel_app/utils/applayout.dart';
import 'package:travel_app/utils/appstyles.dart';

class Hotelview extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const Hotelview({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = AppLayout.getScreenWidth();
    return SizedBox(
      width: width * 0.60, // *ask device for its width*
      height: AppLayout.getHeightProportion(350),
      child: Container(
        padding: EdgeInsets.only(right: AppLayout.getWidthProportion(16)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Container(
            padding: EdgeInsets.all(AppLayout.getWidthProportion(16)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: Styles.blueColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // *show the hotel room picture*
                Container(
                  height: AppLayout.getHeightProportion(180),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("${hotel['image']}"),
                    ),
                  ),
                ),
                Gap(AppLayout.getHeightProportion(10)),
                // *show hotel name*
                Text(
                  "${hotel['name']}",
                  style:
                      Styles.headingStyle3.copyWith(color: Styles.khakiColor),
                ),
                Gap(AppLayout.getHeightProportion(2)),
                // *show hotel location*  
                Text(
                  "${hotel['destination']}",
                  style:
                      Styles.headingStyle4.copyWith(color: Styles.textColor3),
                ),
                Gap(AppLayout.getHeightProportion(8)),
                // *show hotel price*
                Text(
                  "${hotel['price']}",
                  style:
                      Styles.headingStyle1.copyWith(color: Styles.khakiColor),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
