import 'package:flutter/material.dart';
import 'package:harmony_mobile/app/authentication/presentation/screens/signup_type_select/signup_type_select.dart';
import 'package:harmony_mobile/app/authentication/presentation/screens/singup_email_phone/signup_email_phone.dart';
import 'package:harmony_mobile/app/authentication/presentation/screens/verify_email/verify_email.dart';
import 'package:harmony_mobile/app/splash/presentation/screen/splash_screen.dart';
import 'package:harmony_mobile/app/user_type_module/presentation/screens/choose_user_type_view.dart';

class Routes {
  static const String introRoute = "/intro-route";
  static const String splashRoute = "/splash";
  static const String onboaringRoute = "/onboarding";
  static const String loginRoute = "/login";
  static const String chooseUserTypeRoute = "/choose-user-type";
  static const String signupTypeRoute = "/signup-type";
  static const String signupEmail = "/signup-email";
  static const String verifyEmailRoute = "/verify-email";
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
      case Routes.signupTypeRoute:
        return MaterialPageRoute(builder: (_) => const SignupType());
      case Routes.signupEmail:
        return MaterialPageRoute(builder: (_) => const SignupEmailPhone());
      case Routes.verifyEmailRoute:
        return MaterialPageRoute(builder: (_) => const VerifyEmail());
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
