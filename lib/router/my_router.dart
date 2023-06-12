import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:flutter_go_router/screens/index.dart';
import 'global_routes.dart';

class MyRouter {

static final GoRouter router =   GoRouter(
      initialLocation: PreAuthRoutes.login.routeModel.path,
      routes: [
        ..._preAuthRoutes,
        ..._postAuthRoute,
      ],
      errorPageBuilder: (context, state) {
        if (kDebugMode) {
          print(state.error.toString());
        }
        return MaterialPage(
          key: state.pageKey,
          child: ErrorScreen(
            errorMessage: state.error.toString(),
          ),
        );
      },
      debugLogDiagnostics: true,
      redirect: (goRouterState) => handleRedirect(goRouterState),
    );


  static String? handleRedirect(GoRouterState state) {
    final isOnPreAuthRoute = PreAuthRoutes.isInPreAuthRoute(state.subloc);
    final isOnPostAuthRoute = PostAuthRoutes.isInPostAuthRoute(state.subloc);
    return null;
  }

  static final _preAuthRoutes = [
    GoRoute(
      path: PreAuthRoutes.login.routeModel.path,
      name: PreAuthRoutes.login.routeModel.name,
      pageBuilder: (context, state) {
        final passedArgument = (state.extra);
        return MaterialPage
          (
          child:  LoginScreen(extras: passedArgument,),
          key: state.pageKey,
        );
      }
    ),
  ];

  static final _postAuthRoute = [
    /// passing parameters by pathParameters
    /// You can pass the parameter using EX.: context.go('PostAuthRoutes.aboutUs.routeModel.path/about screen here')
    GoRoute(
        path: '${PostAuthRoutes.aboutUs.routeModel.path}/:title',
        name: PostAuthRoutes.aboutUs.routeModel.name,
        pageBuilder: (context, state) {
          final String? title = state.params['title'];
          return MaterialPage(
            child: AboutScreen(
              appBarTitle: title ?? '',
            ),
            key: state.pageKey,
          );
        }),

    /// passing parameters by query parameters
    GoRoute(
        path: PostAuthRoutes.contactUs.routeModel.path,
        name: PostAuthRoutes.contactUs.routeModel.name,
        pageBuilder: (context, state) {
          final queryParameters = state.queryParams['title'];
          return MaterialPage(
            child: ContactUsScreen(
              appBarTitle: queryParameters ?? '',
            ),
            key: state.pageKey,
          );
        }),
    GoRoute(
      path: PostAuthRoutes.home.routeModel.path,
      name: PostAuthRoutes.home.routeModel.name,
      pageBuilder: (context, state) => MaterialPage(
        child: const HomeScreen(),
        key: state.pageKey,
      ),
    ),
  ];
}
