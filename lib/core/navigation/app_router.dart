import 'package:flutter/material.dart';
import 'package:harmony_mobile/app/splash/presentation/screen/splash_screen.dart';
import 'package:harmony_mobile/app/user_type_module/presentation/screens/choose_user_type_view.dart';

class Routes {
  static const String introRoute = "/intro-route";
  static const String splashRoute = "/splash";
  static const String onboaringRoute = "/onboarding";
  static const String loginRoute = "/login";
  static const String chooseUserTypeRoute = "/login";
  static const String createAccountRoute = "/create-account";
  static const String forgetPasswordRoute = "/forget-password";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.chooseUserTypeRoute:
        return MaterialPageRoute(builder: (_) => const ChooseUserTypeView());
      // case Routes.loginRoute:
      //   return MaterialPageRoute(builder: (_) => const LoginView());
      // case Routes.createAccountRoute:
      //   return MaterialPageRoute(builder: (_) => const CreateAccountView());
      // case Routes.forgetPasswordRoute:
      //   return MaterialPageRoute(builder: (_) => const ForgetPasswordView());
      // case Routes.onboaringRoute:
      //   return MaterialPageRoute(builder: (_) => const OnboardingView());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (ctx) => const Scaffold(
              body: Center(
                child: Text("Uh oh 🥲, Route not found!"),
              ),
            ));
  }
}
