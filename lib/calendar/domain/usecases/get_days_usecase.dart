import 'package:custom_calendar/calendar/data/model/days_model.dart';
import 'package:custom_calendar/calendar/domain/repository/calendar_repository.dart';
import 'package:custom_calendar/core/data/error/failure.dart';
import 'package:custom_calendar/core/domain/usecase/base_use_case.dart';
import 'package:dartz/dartz.dart';

class GetDaysUseCase extends BaseUseCase<DaysModel, NoParameters> {
  final CalendarRespository _calendarRespository;

  GetDaysUseCase(this._calendarRespository);

  @override
  Future<Either<Failure, DaysModel>> call(NoParameters p) async {
    return await _calendarRespository.getDays();
  }
}
