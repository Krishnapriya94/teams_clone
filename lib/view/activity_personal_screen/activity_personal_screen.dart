import 'package:flutter/material.dart';
import 'package:teams_clone/utils/color_constants/color_constants.dart';

class ActivityPersonalScreen extends StatelessWidget {
  const ActivityPersonalScreen(
      {super.key,
      required this.message,
      required this.time,
      required this.image,
      required this.name});
  final String message;
  final String time;
  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Stack(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.cover, image: NetworkImage(image))),
              ),
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
            ],
          ),
          SizedBox(
            width: 90,
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
                  Text("July 2"),
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
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: ColorConstants.teams_blue,
                      child: Icon(
                        Icons.add,
                        color: ColorConstants.customeWhite,
                      ),
                    ),
                    Positioned(
                        bottom: 16,
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
