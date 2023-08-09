import 'package:custom_calendar/calendar/data/model/color_enum_model.dart';
import 'package:custom_calendar/calendar/data/model/days_model.dart';
import 'package:custom_calendar/calendar/domain/usecases/get_colors_enum_usecase.dart';
import 'package:custom_calendar/calendar/domain/usecases/get_days_usecase.dart';
import 'package:custom_calendar/core/domain/usecase/base_use_case.dart';
import 'package:custom_calendar/core/utils/enums.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'calendar_color_event.dart';
part 'calendar_color_state.dart';

class CalendarColorBloc extends Bloc<CalendarColorEvent, CalendarColorState> {
  final GetColorEnumsUseCase _getColorEnumsUseCase;
  final GetDaysUseCase _getDaysUseCase;
  CalendarColorBloc(this._getColorEnumsUseCase, this._getDaysUseCase)
      : super(CalendarColorState.initial()) {
    on<GetDataEvent>(_getCalendarDays);
  }

  Future<void> _getCalendarDays(
      GetDataEvent event, Emitter<CalendarColorState> emit) async {
    emit(
      state.copyWith(
        status: RequestStatus.loading,
      ),
    );
    final resultDays = await _getDaysUseCase(const NoParameters());
    final resultColors = await _getColorEnumsUseCase(const NoParameters());
    resultDays.fold((failure) {
      emit(
        state.copyWith(
          status: RequestStatus.error,
          message: failure.message,
        ),
      );
    }, (success) {
      emit(state.copyWith(
        days: success.days,
        year: success.year,
        month: success.month,
        status: RequestStatus.loaded,
      ));
    });
    resultColors.fold((failure) {
      emit(
        state.copyWith(
          status: RequestStatus.error,
          message: failure.message,
        ),
      );
    }, (success) {
      emit(state.copyWith(
        colorEnums: success,
        status: RequestStatus.loaded,
      ));
    });
  }
}
