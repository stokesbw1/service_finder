part of 'theme_cubit.dart';

sealed class ThemeState extends Equatable {
  final ThemeData themeData;

  const ThemeState({required this.themeData});

  @override
  List<Object?> get props => [themeData];
}

final class ThemeLight extends ThemeState {
  const ThemeLight({required super.themeData});
}

final class ThemeDark extends ThemeState {
  const ThemeDark({required super.themeData});
}
