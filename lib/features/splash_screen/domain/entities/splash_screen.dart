import 'package:equatable/equatable.dart';

class SplashScreenEntity extends Equatable {
  final String imagePath;
  final String title;
  final String description;

  const SplashScreenEntity({
    required this.imagePath,
    required this.title,
    required this.description,
  });

  @override
  List<Object?> get props => [imagePath, title, description];
}

final List<SplashScreenEntity> splashScreens = [
  const SplashScreenEntity(
    imagePath: 'assets/svgs/splash_screen/discover_employees.svg',
    title: 'Want to hire someone \n we\'re here for you',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
  ),
  const SplashScreenEntity(
    imagePath: 'assets/svgs/splash_screen/find_services.svg',
    title: 'Find services right \n away easily',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
  ),
  const SplashScreenEntity(
    imagePath: 'assets/svgs/splash_screen/best_services.svg',
    title: 'Discover the best services around you',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
  ),
];
