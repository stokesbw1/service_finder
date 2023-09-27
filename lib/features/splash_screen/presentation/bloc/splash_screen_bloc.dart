import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:service_finder/features/splash_screen/domain/entities/splash_screen.dart';

part 'splash_screen_event.dart';
part 'splash_screen_state.dart';

class SplashScreenBloc extends Bloc<SplashScreenEvent, SplashScreenState> {
  SplashScreenBloc() : super(const SplashScreenInitial(currentPage: 0)) {
    on<SetPageEvent>(_setPage);
  }

  void _setPage(SetPageEvent event, Emitter<SplashScreenState> emit) {
    emit(SplashScreenUpdated(currentPage: event.currentPage));
  }
}
