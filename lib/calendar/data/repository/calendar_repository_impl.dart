import 'package:custom_calendar/calendar/data/datasource/calendar_remote_data_source.dart';
import 'package:custom_calendar/calendar/data/model/color_enum_model.dart';
import 'package:custom_calendar/calendar/data/model/days_model.dart';
import 'package:custom_calendar/calendar/domain/repository/calendar_repository.dart';
import 'package:custom_calendar/core/data/error/exceptions.dart';
import 'package:custom_calendar/core/data/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class CalendarRepositoryImpl extends CalendarRespository {
  final CalendarRemoteDataSource _calendarRemoteDataSource;

  CalendarRepositoryImpl(this._calendarRemoteDataSource);

  @override
  Future<Either<Failure, List<ColorEnumModel>>> getColorEnums() async {
    try {
      final result = await _calendarRemoteDataSource.getColor();
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    } on DioException catch (failure) {
      return Left(ServerFailure(failure.message ?? ''));
    }
  }

  @override
  Future<Either<Failure, DaysModel>> getDays() async {
    try {
      final result = await _calendarRemoteDataSource.getDays();
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    } on DioException catch (failure) {
      return Left(ServerFailure(failure.message ?? ''));
    }
  }
}
