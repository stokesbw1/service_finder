part of 'splash_screen_bloc.dart';

sealed class SplashScreenEvent extends Equatable {
  const SplashScreenEvent();

  @override
  List<Object?> get props => [];
}

class SetPageEvent extends SplashScreenEvent {
  final int currentPage;

  const SetPageEvent({required this.currentPage});
}
