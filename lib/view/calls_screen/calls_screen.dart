import 'package:flutter/material.dart';
import 'package:teams_clone/utils/color_constants/color_constants.dart';
import 'package:teams_clone/view/bottom_nav_screen/widgets/profile_drawer.dart';
import 'package:teams_clone/view/calls_screen/calls_tabs/recent_tab.dart';
import 'package:teams_clone/view/calls_screen/calls_tabs/speed_dial_tab.dart';
import 'package:teams_clone/view/make_call_screen/make_call_screen.dart';
import 'package:teams_clone/view/user_profile_pic_widget/user_profile_pic_widget.dart';

class CallsScreen extends StatefulWidget {
  const CallsScreen({super.key});

  @override
  State<CallsScreen> createState() => _CallsScreenState();
}

class _CallsScreenState extends State<CallsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            leading: user_image_widget(
              height: 40,
              width: 40,
            ),
            title: Text(
              "Calls",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
            actions: [
              SizedBox(
                width: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                decoration: BoxDecoration(border: Border.all(width: 1)),
                child: Icon(
                  Icons.voicemail_outlined,
                  size: 20,
                ),
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
            padding: const EdgeInsets.only(top: 10, left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  height: 40,
                  width: 200,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: ColorConstants.customeGrey, width: .4),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 3,
                          blurRadius: 1,
                          offset: Offset(0, 2), // changes position of shadow
                        ),
                      ],
                      color: ColorConstants.customeGrey.withOpacity(.1),
                      borderRadius: BorderRadius.circular(50)),
                  child: TabBar(
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicator: BoxDecoration(
                        color: ColorConstants.teams_blue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      labelColor: ColorConstants.customeWhite,
                      unselectedLabelColor: ColorConstants.customeBlack,
                      tabs: [
                        Text(
                          "Speed dial",
                          maxLines: 1,
                        ),
                        Text(
                          "Recent",
                        ),
                      ]),
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: Stack(
                    children: [
                      TabBarView(children: [SpeedDialTab(), RecentTab()]),
                      Positioned(
                        right: 30,
                        bottom: 20,
                        child: FloatingActionButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          backgroundColor: ColorConstants.teams_blue,
                          child: Icon(
                            Icons.add_ic_call_sharp,
                            color: ColorConstants.customeWhite,
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MakeCallScreen(),
                                ));
                          },
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
