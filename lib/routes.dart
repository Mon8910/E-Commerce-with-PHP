import 'package:ecommerce_app/core/constant/app_routes.dart';
import 'package:ecommerce_app/view/screen/auth/forget_password.dart';
import 'package:ecommerce_app/view/screen/auth/login.dart';
import 'package:ecommerce_app/view/screen/auth/signup.dart';
import 'package:ecommerce_app/view/screen/onboarding.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes.login: (context) => const Login(),
  AppRoutes.onBoarding: (context) => const OnboardingScreen(),
  AppRoutes.signup: (context) => const Signup(),
  AppRoutes.forgetPassword: (context) => const ForgetPassword()

};
