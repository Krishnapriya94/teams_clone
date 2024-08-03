import 'package:flutter/material.dart';
import 'package:teams_clone/utils/color_constants/color_constants.dart';

class teams_screen_card extends StatelessWidget {
  const teams_screen_card({
    super.key,
    required this.color,
    required this.teamCode,
    required this.teamName,
    required this.groups,
  });

  final Color color;
  final String teamCode;
  final String teamName;
  final String groups;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ExpansionTile(
              controlAffinity: ListTileControlAffinity.leading,
              title: Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    decoration: BoxDecoration(
                        color: color, borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      children: [
                        Text(
                          teamCode,
                          style: TextStyle(color: ColorConstants.customeWhite),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    teamName,
                    style: TextStyle(fontSize: 20),
                    maxLines: 1,
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) => Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          height: 300,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                teamName,
                                style: TextStyle(
                                    color: ColorConstants.customeGrey,
                                    fontSize: 18),
                              ),
                              Text("Private",
                                  style: TextStyle(
                                      color: ColorConstants.customeGrey)),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Icon(Icons.group_outlined),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("View members")
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Icon(Icons.tag),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("Manage tags")
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Icon(Icons.file_copy_sharp),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("View channels")
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Icon(Icons.person_2_outlined),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("Leave team")
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    child: Icon(
                      Icons.more_vert,
                      size: 30,
                    ),
                  )
                ],
              ),
              children: [
                Text(
                  groups,
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
