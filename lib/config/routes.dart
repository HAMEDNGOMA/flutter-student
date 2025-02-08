import 'package:flutter/material.dart';
import '../models/abaya.dart';
import '../screens/abaya_details_screen.dart';
import '../screens/auth/login_screen.dart';
import '../screens/auth/signup_screen.dart';
import '../screens/home_screen.dart';
import '../screens/settings_screen.dart';

class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
      case '/login':
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case '/signup':
        return MaterialPageRoute(builder: (_) => const SignupScreen());
      case '/home':
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case '/settings':
        return MaterialPageRoute(builder: (_) => const SettingsScreen());
      case '/abaya-details':
        final abaya = settings.arguments as Abaya;
        return MaterialPageRoute(
          builder: (_) => AbayaDetailsScreen(abaya: abaya),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('لا يوجد مسار محدد لـ ${settings.name}'),
            ),
          ),
        );
    }
  }
}
