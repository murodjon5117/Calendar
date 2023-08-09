import 'package:custom_calendar/calendar/data/datasource/calendar_remote_data_source.dart';
import 'package:custom_calendar/calendar/data/repository/calendar_repository_impl.dart';
import 'package:custom_calendar/calendar/domain/repository/calendar_repository.dart';
import 'package:custom_calendar/calendar/domain/usecases/get_colors_enum_usecase.dart';
import 'package:custom_calendar/calendar/domain/usecases/get_days_usecase.dart';
import 'package:custom_calendar/calendar/presentation/controller/calendar_color/calendar_color_bloc.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

class ServiceLocator {
  static void init() {
    // Data source
    sl.registerLazySingleton<CalendarRemoteDataSource>(
        () => CalendarRemoteDataSourceImpl());

    // Repository
    sl.registerLazySingleton<CalendarRespository>(
        () => CalendarRepositoryImpl(sl()));

    // Use Cases
    sl.registerLazySingleton(() => GetColorEnumsUseCase(sl()));
    sl.registerLazySingleton(() => GetDaysUseCase(sl()));

    // Bloc
    sl.registerFactory(() => CalendarColorBloc(sl(), sl()));
  }
}
