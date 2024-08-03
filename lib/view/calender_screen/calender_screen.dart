import 'package:flutter/material.dart';
import 'package:teams_clone/utils/color_constants/color_constants.dart';
import 'package:teams_clone/view/bottom_nav_screen/widgets/profile_drawer.dart';
import 'package:teams_clone/view/calender_screen/widgets/agenda.dart';
import 'package:teams_clone/view/calender_screen/widgets/day.dart';

import 'package:teams_clone/view/calender_screen/widgets/table_calendar.dart';
import 'package:teams_clone/view/user_profile_pic_widget/user_profile_pic_widget.dart';

class CalenderScreen extends StatefulWidget {
  const CalenderScreen({super.key});

  @override
  State<CalenderScreen> createState() => _CalenderScreenState();
}

class _CalenderScreenState extends State<CalenderScreen> {
  bool isAgenda = false;
  bool isDay = false;

  @override
  Widget build(BuildContext context) {
    Map<DateTime, List<dynamic>> events = {};
    return Scaffold(
      appBar: AppBar(
        leading: user_image_widget(
          height: 40,
          width: 40,
        ),
        title: Text(
          "July",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
        ),
        actions: [
          Icon(
            Icons.videocam_outlined,
            size: 30,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.search,
            size: 30,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      drawer: profile_drawer(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () {
                    isAgenda = true;
                    isDay = false;
                    setState(() {});
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: isAgenda
                            ? ColorConstants.teams_blue.withOpacity(.3)
                            : ColorConstants.customeGrey.withOpacity(.3),
                        border: Border.all(
                            color: (isAgenda
                                ? ColorConstants.teams_blue
                                : ColorConstants.customeGrey))),
                    child: Text(
                      "Agenda",
                      style: TextStyle(
                          color: isAgenda
                              ? ColorConstants.teams_blue
                              : ColorConstants.customeBlack.withOpacity(.8),
                          fontSize: 18),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () {
                    isAgenda = false;
                    isDay = true;
                    setState(() {});
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: isDay
                            ? ColorConstants.teams_blue.withOpacity(.3)
                            : ColorConstants.customeGrey.withOpacity(.3),
                        border: Border.all(
                            color: isDay
                                ? ColorConstants.teams_blue
                                : ColorConstants.customeGrey)),
                    child: Text(
                      "Day",
                      style: TextStyle(
                          color: isDay
                              ? ColorConstants.teams_blue
                              : ColorConstants.customeBlack.withOpacity(.8),
                          fontSize: 18),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Stack(children: [
              tableCalendarCard(),
              Positioned(
                bottom: 0,
                right: 0,
                child: FloatingActionButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  backgroundColor: ColorConstants.teams_blue,
                  child: Icon(
                    Icons.add,
                    color: ColorConstants.customeWhite,
                  ),
                  onPressed: () {},
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
