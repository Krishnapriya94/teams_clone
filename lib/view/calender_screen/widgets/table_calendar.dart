import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class tableCalendarCard extends StatefulWidget {
  const tableCalendarCard({
    super.key,
  });

  @override
  State<tableCalendarCard> createState() => _tableCalendarCardState();
}

class _tableCalendarCardState extends State<tableCalendarCard> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime today = DateTime.now();
  void _onDaySelected(DateTime day, DateTime focusDay) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            child: TableCalendar(
              headerVisible: false,
              availableGestures: AvailableGestures.all,
              selectedDayPredicate: (day) => isSameDay(day, today),
              calendarFormat: _calendarFormat,
              daysOfWeekStyle: DaysOfWeekStyle(),
              headerStyle: HeaderStyle(
                formatButtonVisible: false,
              ),
              rowHeight: 43,
              focusedDay: today,
              firstDay: DateTime.utc(2000, 10, 10),
              lastDay: DateTime.utc(2099, 10, 10),
              onDaySelected: _onDaySelected,
            ),
          ),
        ],
      ),
    );
  }
}
