import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:service_finder/features/splash_screen/domain/entities/splash_screen.dart';
import 'package:service_finder/features/splash_screen/presentation/bloc/splash_screen_bloc.dart';

class SplashButtonsMobile extends StatelessWidget {
  final SplashScreenState state;
  final PageController controller;
  const SplashButtonsMobile(
      {super.key, required this.state, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: [
        TextButton(
          onPressed: state.currentPage > 0
              ? () {
                  controller.previousPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                  context
                      .read<SplashScreenBloc>()
                      .add(SetPageEvent(currentPage: state.currentPage - 1));
                }
              : null,
          child: const Text('Previous'),
        ),
        ElevatedButton(
          onPressed: state.currentPage < splashScreens.length - 1
              ? () {
                  controller.nextPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                  context
                      .read<SplashScreenBloc>()
                      .add(SetPageEvent(currentPage: state.currentPage + 1));
                  // navigateToPage(currentPage + 1);
                }
              : null,
          child: const Text(
            'Next',
          ),
        ),
      ],
    );
  }
}
