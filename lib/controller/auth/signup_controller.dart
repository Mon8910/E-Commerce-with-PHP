import 'package:ecommerce_app/core/constant/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SignupController extends GetxController {
  signup();
  gotoLogin();
}

class SignupControllerImpl extends SignupController {
  late TextEditingController email;
  late TextEditingController username;
  late TextEditingController password;
  late TextEditingController phone;
  @override
  gotoLogin() {
    Get.offNamed(AppRoutes.login);
  }

  @override
  signup() {
    // TODO: implement signup
    throw UnimplementedError();
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    username = TextEditingController();
    phone = TextEditingController();

    super.onInit();
  }
}
