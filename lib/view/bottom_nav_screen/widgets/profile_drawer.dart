import 'package:flutter/material.dart';
import 'package:teams_clone/user_db/user_db.dart';
import 'package:teams_clone/view/user_profile_pic_widget/user_profile_pic_widget.dart';

class profile_drawer extends StatelessWidget {
  const profile_drawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          children: [
            Row(
              children: [
                user_image_widget(height: 40, width: 40),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      UserDb.userName,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text("Wipro")
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.arrow_forward_ios_outlined)
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Icon(Icons.highlight_off_outlined),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Offline",
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Icon(Icons.location_on_outlined),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Set to work location",
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Icon(Icons.edit_document),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Set status message",
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Icon(Icons.notifications_none),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Notifications",
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Icon(Icons.settings_outlined),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Settings",
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Icon(Icons.add),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Add account",
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
