import 'package:bookly_app/Features/home/presentation/views/home_screen.dart';
import 'package:bookly_app/Features/splash/presentation/views/splash_screen.dart';
import 'package:bookly_app/core/routes/routes.dart';
import 'package:go_router/go_router.dart';

final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(
      path: splashScreen,
      builder: (context, state) => const SplashScreen(),
    ),
        GoRoute(
      path: homeScreen,
      builder: (context, state) => const HomeScreen(),
    ),

  ],
);
