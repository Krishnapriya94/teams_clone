import 'package:flutter/material.dart';
import 'package:teams_clone/user_db/user_db.dart';
import 'package:teams_clone/utils/color_constants/color_constants.dart';
import 'package:teams_clone/view/appbar_more_popup/appbar_more_popup.dart';
import 'package:teams_clone/view/bottom_nav_screen/widgets/profile_drawer.dart';
import 'package:teams_clone/view/chat_screen/widgets/user_message_card.dart';
import 'package:teams_clone/view/user_profile_pic_widget/user_profile_pic_widget.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: user_image_widget(
          height: 40,
          width: 40,
        ),
        title: Text(
          "Chat",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
        ),
        actions: [
          Icon(
            Icons.filter_list,
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
            width: 20,
          ),
          AppbarMorePopup(),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      drawer: profile_drawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
                child: user_image_widget(
              height: 70,
              width: 70,
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(UserDb.userName),
                Text("(You)"),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              children: [
                Column(
                    children: List.generate(
                  UserDb.messageList.length,
                  (index) => user_message_card(
                    nameCode: UserDb.messageList[index]["nameCode"],
                    name: UserDb.messageList[index]["name"],
                    customeColor: UserDb.messageList[index]["color"],
                    message: UserDb.messageList[index]["message"],
                    time: UserDb.messageList[index]["time"],
                    statusIcon: UserDb.messageList[index]["statusIcon"],
                    lastSeen: UserDb.messageList[index]["lastSeen"],
                    date: UserDb.messageList[index]["date"],
                  ),
                )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
