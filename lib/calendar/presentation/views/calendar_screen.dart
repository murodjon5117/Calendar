import 'package:custom_calendar/calendar/presentation/views/calendar_widget.dart';
import 'package:custom_calendar/core/presentation/components/error_screen.dart';
import 'package:custom_calendar/core/presentation/components/loading_indicator.dart';
import 'package:custom_calendar/core/services/service_locator.dart';
import 'package:custom_calendar/core/utils/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../controller/calendar_color/calendar_color_bloc.dart';

class CalendarView extends StatelessWidget {
  const CalendarView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return sl<CalendarColorBloc>()..add(GetDataEvent());
      },
      child: Scaffold(
        body: BlocBuilder<CalendarColorBloc, CalendarColorState>(
          builder: (context, state) {
            switch (state.status) {
              case RequestStatus.loading:
                return const LoadingIndicator();
              case RequestStatus.loaded:
                return CalendarScreen(
                  onDayClicked: (date, type) {
                    _showMyDialog(context, date, type);
                  },
                  month: state.month,
                  year: state.year,
                  colors: state.colorEnums,
                  days: state.days,
                );
              case RequestStatus.error:
                return ErrorScreen(
                  onTryAgainPressed: () {
                    context.read<CalendarColorBloc>().add(GetDataEvent());
                  },
                );
            }
          },
        ),
      ),
    );
  }
}

Future<void> _showMyDialog(
    BuildContext context, DateTime dateTime, int type) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: true, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Report of day'),
        content: SingleChildScrollView(
          child: ListBody(
            children: [
              Text(
                dateTime.toString(),
                style: const TextStyle(color: Colors.black),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                type.toString(),
                style: const TextStyle(color: Colors.black),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            child: const Text('ok'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
