part of 'calendar_color_bloc.dart';

class CalendarColorState extends Equatable {
  final List<ColorEnumModel> colorEnums;
  final List<Days> days;
  final String month;
  final int year;
  final RequestStatus status;
  final String message;

  factory CalendarColorState.initial() {
    return const CalendarColorState(
      colorEnums: [],
      days: [],
      year: 0,
      month: '',
      status: RequestStatus.loading,
      message: '',
    );
  }
  const CalendarColorState({
    this.days = const [],
    this.month = '',
    this.year = 0,
    this.colorEnums = const [],
    this.status = RequestStatus.loading,
    this.message = '',
  });
  CalendarColorState copyWith({
    List<ColorEnumModel>? colorEnums,
    List<Days>? days,
    String? month,
    int? year,
    RequestStatus? status,
    String? message,
  }) {
    return CalendarColorState(
      colorEnums: colorEnums ?? this.colorEnums,
      status: status ?? this.status,
      message: message ?? this.message,
      days: days ?? this.days,
      year: year ?? this.year,
      month: month ?? this.month,
    );
  }

  @override
  List<Object> get props => [
        colorEnums,
        status,
        message,
        days,
        year,
        month,
      ];
}
