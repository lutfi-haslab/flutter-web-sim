import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:web_sim/pages/detail-sim.screen.dart';
import 'package:web_sim/pages/home.screen.dart';

void main() {
  runApp(const MyApp());
}

/// The route configuration.
final _router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/detail-sim',
      builder: (context, state) => const DetailSimScreen(),
    )
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
