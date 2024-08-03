import 'package:flutter/material.dart';
import 'package:teams_clone/user_db/user_db.dart';
import 'package:teams_clone/utils/color_constants/color_constants.dart';
import 'package:teams_clone/view/activity_screen/widgets/activity_list_card.dart';
import 'package:teams_clone/view/appbar_more_popup/appbar_more_popup.dart';
import 'package:teams_clone/view/bottom_nav_screen/widgets/profile_drawer.dart';
import 'package:teams_clone/view/user_profile_pic_widget/user_profile_pic_widget.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({super.key});

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  bool onChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: user_image_widget(
          height: 40,
          width: 40,
        ),
        title: Text(
          "Activity",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
        ),
        actions: [
          Icon(
            Icons.search,
            size: 30,
          ),
          SizedBox(
            width: 20,
          ),
          AppbarMorePopup(),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      drawer: profile_drawer(),
      body: Padding(
        padding: const EdgeInsets.only(top: 10, left: 10),
        child: Column(children: [
          Row(
            children: [
              Switch(
                value: onChecked,
                onChanged: (value) {
                  onChecked = value;
                  setState(() {});
                },
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Unread only",
                style: TextStyle(fontSize: 18),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.withOpacity(.3)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.filter_list),
                      SizedBox(
                        width: 4,
                      ),
                      Text("Filters"),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            child: Column(
              children: List.generate(
                UserDb.activityScreen.length,
                (index) => activity_list_card(
                  title: UserDb.activityScreen[index]["title"],
                  message: UserDb.activityScreen[index]["message"],
                  submessage: UserDb.activityScreen[index]["submessage"],
                  time: UserDb.activityScreen[index]["time"],
                  image: UserDb.activityScreen[index]["images"],
                  name: UserDb.activityScreen[index]["name"],
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
