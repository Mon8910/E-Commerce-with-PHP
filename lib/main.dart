import 'package:ecommerce_app/core/constant/app_color.dart';
import 'package:ecommerce_app/core/localization/local.dart';
import 'package:ecommerce_app/core/localization/translation.dart';
import 'package:ecommerce_app/core/services/services.dart';
import 'package:ecommerce_app/routes.dart';
import 'package:ecommerce_app/view/screen/language.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServiecs();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocalControl control = Get.put(LocalControl());
    return GetMaterialApp(
      locale: control.language,
      translations: MyTranslation(),
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'PlayfairDisplay',
        textTheme: const TextTheme(
            headlineLarge: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppColor.black),
            bodyMedium: TextStyle(
                fontSize: 16,
                height: 2,
                fontWeight: FontWeight.bold,
                color: AppColor.grey)),
      ),
      debugShowCheckedModeBanner: false,
      home: const Language(),
      routes: routes,
    );
  }
}
