import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:noble/theme_service.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'BusinessLayer/Bindings/init_bindings.dart';
import 'Constants/languages.dart';
import 'Constants/router.dart';
import 'Constants/themes.dart';


SharedPreferences? sharedpref;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  sharedpref = await SharedPreferences.getInstance();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);
  static int currentPage = 0;
  // This widget is the root of your application.
  //var selectedTheme = "light";

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      locale: Get.deviceLocale,
      fallbackLocale: const Locale.fromSubtags(languageCode: "ar"),
      translations: Languages(),
      initialBinding: InitBinding(),
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      themeMode: ThemeService().theme,
      getPages: router,
    );
  }
}
