import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_go_router/cubit/auth/auth_cubit.dart';
import 'package:flutter_go_router/router/index.dart';

import 'bloc_observer.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const GoRouterApp());
}

class GoRouterApp extends StatelessWidget {
  const GoRouterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp.router(
      routeInformationProvider: MyRouter.router.routeInformationProvider,
      routeInformationParser: MyRouter.router.routeInformationParser,
      routerDelegate: MyRouter.router.routerDelegate,
      debugShowCheckedModeBanner: false,
    );
  }
}

