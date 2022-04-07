import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pr_tracker/constants/app_colors.dart';
import 'package:sizer/sizer.dart';
import 'app/routes/app_pages.dart';
import 'constants/translations/translations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized() ;
  await Firebase.initializeApp();
  runApp(
    MyApp()
  );
}


class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: ((context, orientation, deviceType) => GetMaterialApp(
      translationsKeys: AppTranslation.translationsKeys,
      locale: Get.deviceLocale,
      fallbackLocale: Locale('en','US'),
      theme: ThemeData(
        primarySwatch: primarySwatch,
        primaryColor: primaryColor
      ),
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    )));
  }
}
