import 'package:flutter/material.dart';
import 'package:teams_clone/utils/color_constants/color_constants.dart';

class SpeedDialTab extends StatelessWidget {
  const SpeedDialTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Add your speed dial numbers",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "When you add contacts to your speed dial,",
            style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18),
          ),
          Text(
            "you'll see them here",
            style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18),
          )
        ],
      ),
    );
  }
}
