import 'package:flutter/material.dart';

class AppbarMorePopup extends StatelessWidget {
  const AppbarMorePopup({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        itemBuilder: (BuildContext context) => [
              PopupMenuItem(
                  child: Row(
                children: [
                  Icon(Icons.remove_red_eye),
                  Text("Mark as unread"),
                ],
              ))
            ]);
  }
}
