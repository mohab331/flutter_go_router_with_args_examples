import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_go_router/router/global_routes.dart';
import 'package:go_router/go_router.dart';

abstract class AppNavigation {
  void navigateToHomeUsScreen();
  void navigateToAboutUsScreen();
  void navigateToContactUsScreen();
  void navigateToLoginScreen({Object? extras});
}

class AppNavigationImpl implements AppNavigation {
  const AppNavigationImpl({
    required this.context,
  });
  final BuildContext context;
  @override
  void navigateToAboutUsScreen() {
    context.pushNamed(
      PostAuthRoutes.aboutUs.routeModel.name,
      params: {
        'title': 'About Us',
      },
    );
  }

  @override
  void navigateToContactUsScreen() {
    context.pushNamed(
      PostAuthRoutes.contactUs.routeModel.name,
      queryParams: {'title': 'Contact Us'},
    );
  }

  @override
  void navigateToHomeUsScreen() {
    context.goNamed(
      PostAuthRoutes.home.routeModel.name,
    );
  }

  @override
  void navigateToLoginScreen({Object? extras}) {
    context.goNamed(PreAuthRoutes.login.routeModel.name, extra: extras,);
  }
}
