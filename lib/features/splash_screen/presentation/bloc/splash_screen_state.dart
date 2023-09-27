part of 'splash_screen_bloc.dart';

sealed class SplashScreenState extends Equatable {
  final int currentPage;
  const SplashScreenState({required this.currentPage});

  @override
  List<Object?> get props => [currentPage];
}

class SplashScreenInitial extends SplashScreenState {
  const SplashScreenInitial({required super.currentPage});

  @override
  List<Object> get props => [currentPage];
}

class SplashScreenUpdated extends SplashScreenState {
  const SplashScreenUpdated({required super.currentPage});
}
