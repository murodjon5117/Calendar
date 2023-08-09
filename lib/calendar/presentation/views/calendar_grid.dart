import 'package:custom_calendar/calendar/data/model/color_enum_model.dart';
import 'package:custom_calendar/core/resources/app_constants.dart';
import 'package:custom_calendar/core/utils/functions.dart';
import 'package:flutter/material.dart';

import '../../data/model/days_model.dart';

class CalendarGrid extends StatelessWidget {
  final List<Days> days;
  final List<ColorEnumModel> colors;
  final DateTime selectedDate;
  final Function(DateTime, int) onDayClicked;

  const CalendarGrid({
    super.key,
    required this.selectedDate,
    required this.days,
    required this.colors,
    required this.onDayClicked,
  });

  @override
  Widget build(BuildContext context) {
    final DateTime currentDate =
        DateTime(selectedDate.year, selectedDate.month);

    int getTypeColor(int currentDay) {
      int type = 0;
      for (Days element in days) {
        if (element.day == currentDay) {
          type = element.type ?? 0;
        }
      }
      return type;
    }

    Color getColorContainer(int currentDay) {
      String colorCode = '';
      for (var element in colors) {
        if (getTypeColor(currentDay) == element.type) {
          colorCode = element.color;
        }
      }
      return getColorFromHex(colorCode);
    }

    int getTypeDay(int currentDay) {
      int type = -1;
      for (var element in colors) {
        if (getTypeColor(currentDay) == element.type) {
          type = element.type;
        }
      }
      return type;
    }

    String weekday(DateTime date) {
      int weekdayIndex = date.weekday;
      String weekday = AppConstants.weekdays[weekdayIndex - 1];
      return weekday;
    }

    int indexOfWeekDay(DateTime date) {
      int weekdayIndex = date.weekday;
      return weekdayIndex - 1;
    }

    final int daysInMonth =
        DateTime(currentDate.year, currentDate.month + 1, 0).day +
            indexOfWeekDay(DateTime(currentDate.year, currentDate.month, 1));

    return GridView.builder(
      itemCount: daysInMonth,
      physics: const ClampingScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 7,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
      ),
      itemBuilder: (BuildContext context, int index) {
        final day = index -
            indexOfWeekDay(DateTime(currentDate.year, currentDate.month, 1)) +
            1;
        final date = DateTime(currentDate.year, currentDate.month, day);

        return day < 1
            ? const SizedBox()
            : GestureDetector(
                onTap: () {
                  if (getTypeDay(day) != -1) {
                    onDayClicked(date, getTypeDay(day));
                  }
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: getColorContainer(day),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Text(
                    day.toString(),
                    style: TextStyle(
                      color: weekday(date) == 'Sun' ? Colors.red : Colors.black,
                    ),
                  ),
                ),
              );
      },
    );
  }
}
