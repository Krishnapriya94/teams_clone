import 'package:flutter/material.dart';
import 'package:teams_clone/user_db/user_db.dart';
import 'package:teams_clone/utils/color_constants/color_constants.dart';
import 'package:teams_clone/view/activity_screen/activity_screen.dart';
import 'package:teams_clone/view/calender_screen/calender_screen.dart';
import 'package:teams_clone/view/calls_screen/calls_screen.dart';
import 'package:teams_clone/view/chat_screen/chat_screen.dart';
import 'package:teams_clone/view/more_bottom_sheet_card/more_bottom_sheet_card.dart';
import 'package:teams_clone/view/teams_screen/teams_screen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int selectIndex = 1;

  final List myScreens = [
    ActivityScreen(),
    ChatScreen(),
    TeamsScreen(),
    CalenderScreen(),
    CallsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: myScreens[selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: ColorConstants.teams_blue,
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        currentIndex: selectIndex,
        items: [
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.notifications),
              icon: Icon(Icons.notifications_none_sharp),
              label: "Activity"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Chats"),
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.groups),
              icon: Icon(Icons.groups_2_outlined),
              label: "Teams"),
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.calendar_month_sharp),
              icon: Icon(Icons.calendar_month_outlined),
              label: "Calender"),
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.call),
              icon: Icon(Icons.phone_outlined),
              label: "Calls"),
          BottomNavigationBarItem(
              icon: InkWell(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (context) => Container(
                              height: double.infinity,
                              width: double.infinity,
                              color: Colors.transparent,
                              child: Container(
                                color: Colors.transparent,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 30),
                                child: GridView.builder(
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 4,
                                    crossAxisSpacing: 10,
                                    mainAxisExtent: 120,
                                  ),
                                  itemBuilder: (context, index) =>
                                      more_bottom_sheet_card(
                                    iconLabel: UserDb.moreScreen[index]
                                        ["iconLabel"],
                                    color: UserDb.moreScreen[index]["color"],
                                    customIcon: UserDb.moreScreen[index]
                                        ["customIcon"],
                                  ),
                                  itemCount: UserDb.moreScreen.length,
                                ),
                              ),
                            ));
                  },
                  child: Icon(Icons.more_horiz_outlined)),
              label: "More"),
        ],
        onTap: (value) {
          selectIndex = value;
          setState(() {});
        },
      ),
    );
  }
}
