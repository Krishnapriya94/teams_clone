import 'package:flutter/material.dart';
import 'package:teams_clone/user_db/user_db.dart';
import 'package:teams_clone/view/calls_screen/calls_tabs/widgets/recent_call_tab.dart';

class RecentTab extends StatefulWidget {
  const RecentTab({super.key});

  @override
  State<RecentTab> createState() => _RecentTabState();
}

class _RecentTabState extends State<RecentTab> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: List.generate(
          10,
          (index) => recent_call_tab(
            nameCode: UserDb.recentCallItems[index]["nameCode"],
            userName: UserDb.recentCallItems[index]["userName"],
            statusIcon: UserDb.recentCallItems[index]["statusIcon"],
            callIcon: UserDb.recentCallItems[index]["callIcon"],
            time: UserDb.recentCallItems[index]["time"],
            col: UserDb.recentCallItems[index]["col"],
            nameCodeColor: UserDb.recentCallItems[index]["nameCodeColor"],
          ),
        ),
      ),
    );
  }
}
