import 'package:flutter/material.dart';

class Agenda extends StatefulWidget {
  const Agenda({super.key});

  @override
  State<Agenda> createState() => _AgendaState();
}

class _AgendaState extends State<Agenda> {
  Map<DateTime, List<dynamic>> events = {
    DateTime(2024, 7, 20): ['Event A', 'Event B'],
    DateTime(2024, 7, 21): ['Event C'],
    DateTime(2024, 7, 22): ['Event D', 'Event E'],
    // Add more events as needed
  };

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
