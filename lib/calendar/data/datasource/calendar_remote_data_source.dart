import 'package:custom_calendar/calendar/data/model/color_enum_model.dart';
import 'package:custom_calendar/calendar/data/model/days_model.dart';
import 'package:custom_calendar/core/data/error/exceptions.dart';
import 'package:custom_calendar/core/data/network/api_constants.dart';
import 'package:custom_calendar/core/data/network/error_message_model.dart';
import 'package:dio/dio.dart';

abstract class CalendarRemoteDataSource {
  Future<List<ColorEnumModel>> getColor();
  Future<DaysModel> getDays();
}

class CalendarRemoteDataSourceImpl extends CalendarRemoteDataSource {
  @override
  Future<List<ColorEnumModel>> getColor() async {
    final response = await Dio().get(ApiConstants.getColorEnums);
    print(response);
    if (response.statusCode == 200) {
      return List<ColorEnumModel>.from(
          (response.data as List).map((e) => ColorEnumModel.fromJson(e)));
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(response.data),
      );
    }
  }

  @override
  Future<DaysModel> getDays() async {
    final response = await Dio().get(ApiConstants.getDays);
    print(response);
    if (response.statusCode == 200) {
      return DaysModel.fromJson(response.data);
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(response.data),
      );
    }
  }
}
