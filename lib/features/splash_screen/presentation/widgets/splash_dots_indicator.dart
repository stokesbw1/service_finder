import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:service_finder/features/splash_screen/presentation/bloc/splash_screen_bloc.dart';

class SpashDotsIndicator extends StatelessWidget {
  final SplashScreenState state;
  const SpashDotsIndicator({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      dotsCount: 3, // Replace with the number of screens
      position: state.currentPage,
      decorator: DotsDecorator(
        color: Colors.grey[300]!,
        activeColor: Colors.blue,
        size: Size(10, 10),
        activeSize: Size(14, 14),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
