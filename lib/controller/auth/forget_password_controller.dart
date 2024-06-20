import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ForgetPasswordController extends GetxController {
  goToverifty();
  checkEmail();
}

class ForgetPasswordControllerImpl extends ForgetPasswordController {
  late TextEditingController email;
  @override
  checkEmail() {
    throw UnimplementedError();
  }

  @override
  goToverifty() {
    throw UnimplementedError();
  }

  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }
}
