import 'package:custom_calendar/calendar/data/model/color_enum_model.dart';
import 'package:custom_calendar/calendar/data/model/days_model.dart';
import 'package:custom_calendar/core/data/error/failure.dart';
import 'package:dartz/dartz.dart';

abstract class CalendarRespository {
  Future<Either<Failure, List<ColorEnumModel>>> getColorEnums();
  Future<Either<Failure, DaysModel>> getDays();
}
