import 'package:flutter/material.dart';
import 'package:ndoora_shopping/presentation/screens/shared/home_layout/home_layout_screen.dart';
import '../screens/user/home_screen.dart';
import 'app_router_names.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRouterNames.rSplashRoute:
        return MaterialPageRoute(builder: (_) =>HomeLayoutScreen());
      default:
        return null;
    }
  }
}
