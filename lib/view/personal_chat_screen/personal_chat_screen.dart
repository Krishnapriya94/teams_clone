import 'package:flutter/material.dart';
import 'package:teams_clone/utils/color_constants/color_constants.dart';

class PersonalChatScreen extends StatelessWidget {
  const PersonalChatScreen({
    super.key,
    required this.nameCode,
    required this.name,
    required this.customeColor,
    required this.message,
    required this.statusIcon,
    required this.lastSeen,
    required this.date,
    required this.time,
  });

  final String nameCode;
  final String name;
  final Color customeColor;
  final String message;
  final String lastSeen;
  final Icon statusIcon;
  final String date;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: ColorConstants.customeBlack,
        actions: [
          Stack(
            children: [
              Container(
                width: 50,
                height: 50,
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
              Positioned(left: 30, bottom: 0, child: statusIcon)
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 1,
              ),
              Text(
                lastSeen,
                maxLines: 1,
              ),
            ],
          ),
          SizedBox(
            width: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                Icons.videocam_outlined,
                size: 30,
              ),
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.call_outlined,
                size: 30,
              ),
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.info_outline,
                size: 30,
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(date),
                  SizedBox(
                    width: 10,
                  ),
                  Text(time),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                message,
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Stack(children: [
                    SizedBox(
                      height: 40,
                      width: 40,
                    ),
                    Positioned(
                      bottom: 4,
                      left: 0,
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: ColorConstants.teams_blue,
                        child: Icon(
                          Icons.add,
                          color: ColorConstants.customeWhite,
                        ),
                      ),
                    ),
                    Positioned(
                        top: 0,
                        left: 15,
                        child: Container(
                          width: 15,
                          height: 15,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: ColorConstants.customeWhite),
                              shape: BoxShape.circle,
                              color: ColorConstants.customeRed),
                        ))
                  ]),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: SizedBox(
                      width: 500,
                      child: TextField(
                        style: TextStyle(),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          hintText: "Type a message",
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.camera_alt_outlined,
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.mic_none_outlined,
                    size: 30,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
