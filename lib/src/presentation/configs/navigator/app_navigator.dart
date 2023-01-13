import 'package:flutter/material.dart';
import '../../screen/screen.dart';
import '../../screen/client/workouts/workouts_screen.dart';
import '../config.dart';

class AppNavigator {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  static Route? getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashScreen:
        return _buildRoute(
          settings,
          const SplashScreen(),
        );
      case Routes.loginScreen:
        return _buildRoute(
          settings,
          const LoginScreen(),
        );
      case Routes.registerScreen:
        return _buildRoute(
          settings,
          const RegisterScreen(),
        );
      case Routes.register2Screen:
        return _buildRoute(
          settings,
          const Register2Screen(),
        );
      case Routes.register3Screen:
        return _buildRoute(
          settings,
          const Register3Screen(),
        );
      case Routes.registerSuccessScreen:
        return _buildRoute(
          settings,
          const RegisterSuccessScreen(),
        );
      case Routes.mainScreen:
        final accountType = settings.arguments as AccountType;
        return _buildRoute(
          settings,
          MainScreen(accountType: accountType),
        );
      case Routes.editProfileScreen:
        return _buildRoute(
          settings,
          const EditProfileScreen(),
        );
      case Routes.workoutScreen:
        return _buildRoute(
          settings,
          const ClientWorkoutsScreen(),
        );
      case Routes.exercisesScreen:
        return _buildRoute(
          settings,
          const ExercisesScreen(),
        );
      case Routes.detailExerciseScreen:
        return _buildRoute(
          settings,
          const DetailExerciseScreen(),
        );
      case Routes.workoutDefinitionsScreen:
        return _buildRoute(
          settings,
          const WorkoutDefinitionsScreen(),
        );

      default:
        return null;
    }
  }

  static MaterialPageRoute _buildRoute(
    RouteSettings routeSettings,
    Widget builder,
  ) {
    return MaterialPageRoute(
      builder: (context) => builder,
      settings: routeSettings,
    );
  }

  static Future push<T>(
    String route, {
    Object? arguments,
  }) {
    return state.pushNamed(route, arguments: arguments);
  }

  static Future pushNamedAndRemoveUntil<T>(
    String route, {
    Object? arguments,
  }) {
    return state.pushNamedAndRemoveUntil(
      route,
      (route) => false,
      arguments: arguments,
    );
  }

  static Future replaceWith<T>(
    String route, {
    Map<String, dynamic>? arguments,
  }) {
    return state.pushReplacementNamed(route, arguments: arguments);
  }

  static void popUntil<T>(String route) {
    state.popUntil(ModalRoute.withName(route));
  }

  static void pop() {
    if (canPop) {
      state.pop();
    }
  }

  static bool get canPop => state.canPop();

  static BuildContext? get context => navigatorKey.currentContext;

  static NavigatorState get state => navigatorKey.currentState!;
}
