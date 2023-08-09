import 'package:custom_calendar/calendar/data/model/color_enum_model.dart';
import 'package:custom_calendar/core/resources/app_constants.dart';
import 'package:flutter/material.dart';

import '../../data/model/days_model.dart';
import 'calendar_grid.dart';

class CalendarScreen extends StatefulWidget {
  final int year;
  final String month;
  final List<Days> days;
  final List<ColorEnumModel> colors;
  final Function(DateTime date, int type) onDayClicked;

  const CalendarScreen(
      {super.key,
      required this.month,
      required this.year,
      required this.days,
      required this.colors,
      required this.onDayClicked});

  @override
  _CalendarScreenState createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  @override
  Widget build(BuildContext context) {
    final DateTime selectedDate =
        DateTime(widget.year, int.parse(widget.month), 1);

    return Scaffold(
      appBar: AppBar(title: const Text('Custom Calendar')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Text(
              'Selected Date: ${selectedDate.toString()}',
              style: const TextStyle(color: Colors.black),
            ),
            const SizedBox(height: 20),
            Row(
              children: List.generate(7, (index) {
                return Expanded(
                  child: Center(
                    child: Text(
                      AppConstants.weekdays[index],
                      style: TextStyle(
                          color: AppConstants.weekdays[index] == 'Sun'
                              ? Colors.red
                              : Colors.black),
                    ),
                  ),
                );
              }),
            ),
            const SizedBox(
              height: 30,
            ),
            CalendarGrid(
              selectedDate: selectedDate,
              days: widget.days,
              colors: widget.colors,
              onDayClicked: widget.onDayClicked,
            ),
          ],
        ),
      ),
    );
  }
}
