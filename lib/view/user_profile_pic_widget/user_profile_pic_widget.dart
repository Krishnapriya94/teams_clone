import 'package:flutter/material.dart';
import 'package:teams_clone/user_db/user_db.dart';

class user_image_widget extends StatelessWidget {
  const user_image_widget({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return InkWell(
        onTap: () {
          Scaffold.of(context).openDrawer();
        },
        child: Center(
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(UserDb.userImage)),
            ),
          ),
        ),
      );
    });
  }
}
