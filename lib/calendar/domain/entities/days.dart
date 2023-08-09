import 'package:custom_calendar/calendar/domain/entities/day.dart';
import 'package:equatable/equatable.dart';

class Days extends Equatable {
  final String month;
  final int year;
  final List<Day> days;

  const Days({
    required this.month,
    required this.year,
    required this.days,
  });

  @override
  List<Object?> get props => [
        month,
        year,
        days,
      ];
}
