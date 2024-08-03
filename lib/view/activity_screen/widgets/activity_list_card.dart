import 'package:flutter/material.dart';
import 'package:teams_clone/utils/color_constants/color_constants.dart';
import 'package:teams_clone/view/activity_personal_screen/activity_personal_screen.dart';

class activity_list_card extends StatelessWidget {
  const activity_list_card({
    super.key,
    required this.title,
    required this.message,
    required this.submessage,
    required this.time,
    required this.image,
    required this.name,
  });

  final String title;
  final String message;
  final String submessage;
  final String time;
  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ActivityPersonalScreen(
                  message: message, time: time, image: image, name: name),
            ));
      },
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 10, top: 10),
            width: double.infinity,
            decoration: BoxDecoration(),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.cover, image: NetworkImage(image))),
                    ),
                    Positioned(
                      left: 35,
                      bottom: 3,
                      child: Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2),
                            shape: BoxShape.circle,
                            color: ColorConstants.customeRed),
                        child: Center(
                          child: Text(
                            "@",
                            style: TextStyle(
                                color: ColorConstants.customeWhite,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )
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
                        title,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 19),
                      ),
                      Text(
                        message,
                        maxLines: 1,
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(submessage, style: TextStyle(fontSize: 12)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(time),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(
            indent: 70,
            thickness: .5,
          )
        ],
      ),
    );
  }
}
