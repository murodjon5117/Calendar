import 'package:custom_calendar/calendar/data/model/color_enum_model.dart';
import 'package:custom_calendar/calendar/domain/repository/calendar_repository.dart';
import 'package:custom_calendar/core/data/error/failure.dart';
import 'package:custom_calendar/core/domain/usecase/base_use_case.dart';
import 'package:dartz/dartz.dart';

class GetColorEnumsUseCase
    extends BaseUseCase<List<ColorEnumModel>, NoParameters> {
  final CalendarRespository _calendarRespository;

  GetColorEnumsUseCase(this._calendarRespository);

  @override
  Future<Either<Failure, List<ColorEnumModel>>> call(NoParameters p) async {
    return await _calendarRespository.getColorEnums();
  }
}
