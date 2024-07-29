import 'package:elmamlouk_mall/Core/Constants/colors.dart';
import 'package:elmamlouk_mall/Core/Localization/translation.dart';
import 'package:elmamlouk_mall/Core/Services/services.dart';
import 'package:elmamlouk_mall/Views/Langs/languages_screen.dart';
import 'package:elmamlouk_mall/routes.dart';
// import 'package:elmamlouk_mall/Views/Splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      title: 'المملوك',
      theme: ThemeData(
        scaffoldBackgroundColor: kveryWhite,
        useMaterial3: true,
      ),
      home: const LanguagesScreen(),
      routes: routes,
    );
  }
}
