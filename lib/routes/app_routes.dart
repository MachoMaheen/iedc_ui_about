import 'package:flutter/material.dart';
import 'package:maheen_s_application1/presentation/home_screen/home_screen.dart';
import 'package:maheen_s_application1/presentation/frame_thirtysix_screen/frame_thirtysix_screen.dart';
import 'package:maheen_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String homeScreen = '/home_screen';

  static const String frameThirtysixScreen = '/frame_thirtysix_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        homeScreen: HomeScreen.builder,
        frameThirtysixScreen: FrameThirtysixScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: HomeScreen.builder
      };
}
