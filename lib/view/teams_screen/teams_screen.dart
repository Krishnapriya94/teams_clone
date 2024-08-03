import 'package:flutter/material.dart';
import 'package:teams_clone/user_db/user_db.dart';
import 'package:teams_clone/utils/color_constants/color_constants.dart';
import 'package:teams_clone/view/appbar_more_popup/appbar_more_popup.dart';
import 'package:teams_clone/view/bottom_nav_screen/widgets/profile_drawer.dart';
import 'package:teams_clone/view/teams_screen/widgets/teams_screen_card.dart';
import 'package:teams_clone/view/user_profile_pic_widget/user_profile_pic_widget.dart';

class TeamsScreen extends StatefulWidget {
  const TeamsScreen({super.key});

  @override
  State<TeamsScreen> createState() => _TeamsScreenState();
}

class _TeamsScreenState extends State<TeamsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: user_image_widget(
          height: 40,
          width: 40,
        ),
        title: Text(
          "Teams",
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
        padding: const EdgeInsets.only(top: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Icon(Icons.star_border),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Discover",
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Your Teams",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (context) => Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 20),
                                child: Container(
                                  height: 150,
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.add),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Text("Create new team")
                                        ],
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.groups_2_outlined),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Text("Browse teams")
                                        ],
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.tag),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Text("Join a team with a code")
                                        ],
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                          child: Icon(
                            Icons.groups_2_outlined,
                            size: 25,
                            color: ColorConstants.customeGrey,
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.settings_outlined,
                          size: 25,
                          color: ColorConstants.customeGrey,
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Column(
                      children: List.generate(
                    UserDb.teamsScreenItems.length,
                    (index) => teams_screen_card(
                      color: UserDb.teamsScreenItems[index]["color"],
                      teamCode: UserDb.teamsScreenItems[index]["teamCode"],
                      teamName: UserDb.teamsScreenItems[index]["teamName"],
                      groups: UserDb.teamsScreenItems[index]["groups"],
                    ),
                  ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
