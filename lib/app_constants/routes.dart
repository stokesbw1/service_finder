import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';
import 'package:service_finder/features/splash_screen/presentation/pages/splash_screen_view.dart';
import 'package:service_finder/injection_container.dart';

final routes = RouteMap(routes: {
  '/': (_) {
    return MaterialPage(
      child: SplashScreenView(
        themeCubit: sl(),
        splashScreenBloc: sl(),
      ),
      // paths: ['/feed', '/settings'],
    );
  }
  // '/feed': (_) => MaterialPage(child: FeedPage()),
  // '/settings': (_) => MaterialPage(child: SettingsPage()),
  // '/feed/profile/:id': (info) =>
  //     MaterialPage(child: ProfilePage(id: info.pathParameters['id'])),
});
