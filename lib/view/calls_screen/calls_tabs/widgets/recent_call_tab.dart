import 'package:flutter/material.dart';
import 'package:teams_clone/utils/color_constants/color_constants.dart';

class recent_call_tab extends StatelessWidget {
  const recent_call_tab({
    super.key,
    required this.nameCode,
    required this.userName,
    required this.statusIcon,
    required this.callIcon,
    required this.time,
    required this.col,
    required this.nameCodeColor,
  });

  final String nameCode;
  final String userName;
  final String time;
  final Icon statusIcon;
  final Icon callIcon;
  final Color col;
  final Color nameCodeColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            width: double.infinity,
            child: Row(
              children: [
                Stack(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration:
                          BoxDecoration(shape: BoxShape.circle, color: col),
                      child: Center(
                          child: Text(nameCode,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: nameCodeColor))),
                    ),
                    Positioned(left: 40, bottom: 0, child: statusIcon)
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userName,
                      style: TextStyle(
                          color: ColorConstants.customeBlack, fontSize: 18),
                    ),
                    Row(
                      children: [
                        callIcon,
                        Text(
                          time,
                          style: TextStyle(
                              color: ColorConstants.customeGrey, fontSize: 16),
                        ),
                      ],
                    )
                  ],
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Icon(
                    Icons.call_outlined,
                    size: 30,
                    color: ColorConstants.teams_blue,
                  ),
                )
              ],
            ),
          ),
        ),
        Divider(
          indent: 68,
          thickness: .7,
        )
      ],
    );
  }
}
