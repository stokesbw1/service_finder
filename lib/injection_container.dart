import 'package:get_it/get_it.dart';
import 'package:service_finder/core/theme/cubit/theme_cubit.dart';
import 'package:service_finder/features/splash_screen/presentation/bloc/splash_screen_bloc.dart';
import 'package:service_finder/features/splash_screen/presentation/pages/splash_screen_view.dart';

final sl = GetIt.instance;

void init() {
  sl.registerFactory(() => SplashScreenView(themeCubit: sl(), splashScreenBloc: sl(),));
  sl.registerLazySingleton(() => ThemeCubit());
  sl.registerLazySingleton(() => SplashScreenBloc());
}
