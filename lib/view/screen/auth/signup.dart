import 'package:ecommerce_app/controller/auth/signup_controller.dart';
import 'package:ecommerce_app/core/constant/app_color.dart';
import 'package:ecommerce_app/view/widget/auth_widgets/custom_body_auth.dart';
import 'package:ecommerce_app/view/widget/auth_widgets/custom_button_auth.dart';
import 'package:ecommerce_app/view/widget/auth_widgets/custom_text_end.dart';
import 'package:ecommerce_app/view/widget/auth_widgets/custom_text_form_field.dart';
import 'package:ecommerce_app/view/widget/auth_widgets/custom_title_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    SignupControllerImpl conntroller = Get.put(SignupControllerImpl());
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            '12'.tr,
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(color: AppColor.grey),
          ),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: ListView(
            children: [
              const SizedBox(
                height: 15,
              ),
               CustomTitleAuth(title: '6'.tr),
              const SizedBox(
                height: 20,
              ),
              const CustomBodyauth(
                body:
                    'Sign up With Your Email And password Or Continue With Social Media',
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextFormField(
                controller: conntroller.username,
                title: 'Username',
                hint: 'enter your username',
                iconData: Icons.person_outline,
              ),
              const SizedBox(
                height: 25,
              ),
              CustomTextFormField(
                controller: conntroller.email,
                title: 'Email',
                hint: 'enter your email',
                iconData: Icons.email_outlined,
              ),
              const SizedBox(
                height: 25,
              ),
              CustomTextFormField(
                controller: conntroller.phone,
                title: 'Phone',
                hint: 'enter your phone',
                iconData: Icons.phone_android_outlined,
              ),
              const SizedBox(
                height: 25,
              ),
              CustomTextFormField(
                controller: conntroller.password,
                title: 'password',
                hint: 'enter your password',
                iconData: Icons.lock_outline,
              ),
              const SizedBox(
                height: 8,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomButtonAuth(
                title: 'sign in',
                onPressed: () {},
              ),
              const SizedBox(
                height: 40,
              ),
              CustomTextEnd(
                title1: "you  have account ?",
                title2: 'Signin',
                onTap: () {
                  conntroller.gotoLogin();
                },
              )
            ],
          ),
        ));
  }
}
