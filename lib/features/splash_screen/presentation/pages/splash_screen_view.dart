import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:service_finder/core/theme/cubit/theme_cubit.dart';
import 'package:service_finder/features/splash_screen/domain/entities/splash_screen.dart';
import 'package:service_finder/features/splash_screen/presentation/bloc/splash_screen_bloc.dart';
import 'package:service_finder/features/splash_screen/presentation/widgets/splash_dots_indicator.dart';
import 'package:service_finder/features/splash_screen/presentation/widgets/splash_screen_mobile.dart';

class SplashScreenView extends StatefulWidget {
  final ThemeCubit themeCubit;
  final SplashScreenBloc splashScreenBloc;
  const SplashScreenView(
      {super.key, required this.themeCubit, required this.splashScreenBloc});

  @override
  State<SplashScreenView> createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {
  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeCubit>.value(value: widget.themeCubit),
        BlocProvider<SplashScreenBloc>.value(value: widget.splashScreenBloc),
      ],
      child: MaterialApp(
        home: Scaffold(body: BlocBuilder<ThemeCubit, ThemeState>(
          builder: (context, state) {
            final theme = state.themeData;
            return BlocBuilder<SplashScreenBloc, SplashScreenState>(
              builder: (context, state) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: PageView.builder(
                          controller: controller,
                          itemCount: splashScreens.length,
                          itemBuilder: (context, index) {
                            final screen = splashScreens[index];

                            return SplashScreenMobile(
                              imagePath: screen.imagePath,
                              title: screen.title,
                              description: screen.description,
                              state: state,
                              controller: controller, assetName: screen.imagePath,
                            );
                          }),
                    ),
                  ],
                );
              },
            );
          },
        )),
      ),
    );
  }
}
