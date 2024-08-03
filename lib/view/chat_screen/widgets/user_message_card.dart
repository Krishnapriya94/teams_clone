import 'package:flutter/material.dart';
import 'package:teams_clone/utils/color_constants/color_constants.dart';
import 'package:teams_clone/view/personal_chat_screen/personal_chat_screen.dart';

class user_message_card extends StatelessWidget {
  const user_message_card({
    super.key,
    required this.nameCode,
    required this.name,
    required this.customeColor,
    required this.message,
    required this.time,
    required this.statusIcon,
    required this.lastSeen,
    required this.date,
  });

  final String nameCode;
  final String name;
  final Color customeColor;
  final String message;
  final String time;
  final Icon statusIcon;
  final String lastSeen;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PersonalChatScreen(
                    nameCode: nameCode,
                    name: name,
                    customeColor: customeColor,
                    message: message,
                    statusIcon: statusIcon,
                    lastSeen: lastSeen,
                    date: date,
                    time: time,
                  ),
                ));
          },
          child: Container(
            decoration: BoxDecoration(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: customeColor.withOpacity(.3)),
                              child: Center(
                                  child: Text(nameCode,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          color: customeColor))),
                            ),
                            Positioned(left: 40, bottom: 0, child: statusIcon)
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                name,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              Text(
                                message,
                                maxLines: 1,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(time)
                ],
              ),
            ),
          ),
        ),
        Divider(
          thickness: .5,
          indent: 73,
        )
      ],
    );
  }
}
