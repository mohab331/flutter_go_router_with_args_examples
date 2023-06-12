import 'package:flutter_go_router/screens/index.dart';

enum PreAuthRoutes {
  login(
    RouteModel(
      name: LoginScreen.routeName,
      path: LoginScreen.routePath,
    ),
  );

  const PreAuthRoutes(this.routeModel);
  final RouteModel routeModel;

  static bool isInPreAuthRoute(String path) {
    try {
      PreAuthRoutes.values.firstWhere(
        (element) => element.routeModel.path == path,
      );
      return true;
    } catch (e) {
      return false;
    }
  }
}

enum PostAuthRoutes {
  home(
    RouteModel(
      name: HomeScreen.routeName,
      path: HomeScreen.routePath,
    ),
  ),
  aboutUs(
    RouteModel(
      name: AboutScreen.routeName,
      path: AboutScreen.routePath,
    ),
  ),
  contactUs(
    RouteModel(
      name: ContactUsScreen.routeName,
      path: ContactUsScreen.routePath,
    ),
  );

  const PostAuthRoutes(this.routeModel);
  final RouteModel routeModel;

  static bool isInPostAuthRoute(String path) {
    try {
      PostAuthRoutes.values.firstWhere(
        (element) => element.routeModel.path == path,
      );
      return true;
    } catch (e) {
      return false;
    }
  }
}

class RouteModel {
  const RouteModel({required this.name, required this.path});
  final String name;
  final String path;
}
