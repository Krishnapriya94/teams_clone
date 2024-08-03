import 'package:flutter/material.dart';

class more_bottom_sheet_card extends StatelessWidget {
  const more_bottom_sheet_card({
    super.key,
    required this.iconLabel,
    this.customIcon,
    required this.color,
  });

  final String iconLabel;
  final Icon? customIcon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: customIcon,
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(10)),
          ),
        ),
        Text(iconLabel),
      ],
    );
  }
}
