import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:web_sim/pages/app1.dart';
import 'package:web_sim/pages/app1/secondpage.screen.dart';
import 'package:web_sim/pages/app2.dart';

void main() {
  runApp(const MyApp());
}

/// The route configuration.
final _router = GoRouter(
  initialLocation: '/page1',
  routes: [
    GoRoute(
      path: '/page1',
      builder: (context, state) => const MicroApp(),
      routes: [
        GoRoute(
          path: 'second-page',
          builder: (context, state) => const SecondPage(),
        ),
      ],
    ),
    GoRoute(
      path: '/page2',
      builder: (context, state) => const MicroApp1Widget(),
      routes: [
        GoRoute(
          path: 'second-page',
          builder: (context, state) => const SecondPage(),
        ),
      ],
    ),
  ],
  routerNeglect: false,
);

/// The main app.
class MyApp extends StatelessWidget {
  /// Constructs a [MyApp]
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
    );
  }
}
