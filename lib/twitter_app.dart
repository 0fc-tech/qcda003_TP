import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tp_flutter/connection_page.dart';
import 'package:tp_flutter/home_page.dart';

class TwitterApp extends StatelessWidget {
  TwitterApp({super.key});

  final _router = GoRouter(routes: [
    GoRoute(
      path: "/",
      builder: (context, state)=>ConnectionPage(),
      routes: [
        GoRoute(
            path: "home",
            builder: (context, state)=>HomePage(),
        )
      ]
    ),
  ]);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      title: 'Twitter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
    );
  }
}




