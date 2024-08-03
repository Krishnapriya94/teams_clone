import 'package:flutter/material.dart';
import 'package:teams_clone/utils/color_constants/color_constants.dart';

class MakeCallScreen extends StatefulWidget {
  const MakeCallScreen({super.key});

  @override
  State<MakeCallScreen> createState() => _MakeCallScreenState();
}

class _MakeCallScreenState extends State<MakeCallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Make a call",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                Text(
                  "To:",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search for people",
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
