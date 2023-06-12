import 'package:flutter/cupertino.dart';

import 'package:flutter_go_router/utils/route_functions.dart';

extension NavigationHelpersExt on BuildContext {
  AppNavigation get navigator => AppNavigationImpl( context: this);
}