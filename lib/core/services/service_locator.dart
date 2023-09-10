import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

class ServiceLocator {
  static void init() {
    // // Data source
    // sl.registerLazySingleton<CalendarRemoteDataSource>(
    //     () => CalendarRemoteDataSourceImpl());

    // // Repository
    // sl.registerLazySingleton<CalendarRespository>(
    //     () => CalendarRepositoryImpl(sl()));

    // // Use Cases
    // sl.registerLazySingleton(() => GetColorEnumsUseCase(sl()));
    // sl.registerLazySingleton(() => GetDaysUseCase(sl()));

    // // Bloc
    // sl.registerFactory(() => CalendarColorBloc(sl(), sl()));
  }
}
