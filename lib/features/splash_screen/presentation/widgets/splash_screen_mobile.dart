import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:service_finder/features/splash_screen/presentation/bloc/splash_screen_bloc.dart';
import 'package:service_finder/features/splash_screen/presentation/widgets/splash_buttons_mobile.dart';
import 'package:service_finder/features/splash_screen/presentation/widgets/splash_dots_indicator.dart';

class SplashScreenMobile extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final SplashScreenState state;
  final PageController controller;
  final String assetName;

  const SplashScreenMobile({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.description,
    required this.state,
    required this.controller,
    required this.assetName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      // mainAxisSize: MainAxisSize.min,
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          assetName,
          // semanticsLabel: assetName.split('/').last,
          width: 200,
          height: 300,
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(title,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              description,
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        SpashDotsIndicator(
          state: state,
        ),
        const SizedBox(
          height: 15,
        ),
        SplashButtonsMobile(
          controller: controller,
          state: state,
        )
      ],
    );
  }
}
