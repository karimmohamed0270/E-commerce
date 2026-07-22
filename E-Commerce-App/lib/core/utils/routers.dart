import 'package:e_commerce/features/auth/presentations/views/login_view.dart';
import 'package:e_commerce/features/onbording/presintaions/views/onboarding_screen.dart';
import 'package:e_commerce/features/splach/presentations/views/spalch_screen.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {

 static final router = GoRouter(
    routes: [
      GoRoute(
        // intial screen
      path: '/',
      builder: (context, state) => const SplashScreen(),
      ),

      GoRoute(
        // onboarding screen
        path: '/onboarding',
        builder: (context, state) => const OnboardingScreen(),
      ),

      GoRoute(
        // login screen
        path: '/login',
        builder: (context, state) => const LoginView(),
      ),
    ],
  );

}