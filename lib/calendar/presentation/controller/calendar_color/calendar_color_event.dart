part of 'calendar_color_bloc.dart';

sealed class CalendarColorEvent extends Equatable {
  const CalendarColorEvent();

  @override
  List<Object> get props => [];
}
class GetDataEvent extends CalendarColorEvent {}

