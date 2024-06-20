import 'package:ecommerce_app/core/constant/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  login();
  goToSignup();
  goToForgetPassword();
}

class LoginControllerImpl extends LoginController {
  late TextEditingController email;
  late TextEditingController password;
  @override
  goToSignup() {
    Get.toNamed(AppRoutes.signup);
  }

  @override
  login() {
    throw UnimplementedError();
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  goToForgetPassword() {
    Get.toNamed(AppRoutes.forgetPassword);
   
  }
}
