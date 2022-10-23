import 'package:get/get.dart';
import 'package:noble/PresentationLayer/screens/public/about_screen.dart';
import 'package:noble/PresentationLayer/screens/public/search_screen.dart';
import '../BusinessLayer/Bindings/home_bindings.dart';
import '../PresentationLayer/screens/public/add_property.dart';
import 'routes.dart';
import '../PresentationLayer/Screens/Auth/login_page.dart';
import '../PresentationLayer/Screens/Auth/otp_check_page.dart';
import '../PresentationLayer/screens/public/advertising_screen.dart';
import '../PresentationLayer/screens/public/category_screen.dart';

import '../PresentationLayer/screens/public/favorite_page.dart';
import '../PresentationLayer/screens/public/home_page.dart';
import '../PresentationLayer/screens/public/latest_properties.dart';
import '../PresentationLayer/screens/public/notification_page.dart';
import '../PresentationLayer/screens/public/office_page.dart';
import '../PresentationLayer/screens/public/onboarding.dart';
import '../PresentationLayer/screens/public/profile_screen.dart';
import '../PresentationLayer/screens/public/property_screen.dart';
import '../PresentationLayer/Screens/Public/splash_screen.dart';
import '../PresentationLayer/screens/public/highlights_screen.dart';

List<GetPage<dynamic>> router = [
  GetPage(
    name: AppRoutes.splashScreen,
    page: () => SplashScreen(),
  ),
  GetPage(
      name: AppRoutes.loginPage,
      page: () => LoginPage(),
      transition: Transition.rightToLeft),
  GetPage(
      name: AppRoutes.otpPage,
      page: () => const OtpCheckPage(),
      transition: Transition.rightToLeft),
  GetPage(
      name: AppRoutes.homepage,
      transition: Transition.downToUp,
      page: () => const HomePage(),
      binding: HomeBinding()),
  GetPage(
      name: AppRoutes.latestproperties,
      transition: Transition.downToUp,
      page: () => LatestProperties(),
      binding: HomeBinding()),
  GetPage(
    name: AppRoutes.onBoardingScreen,
    transition: Transition.leftToRight,
    page: () => const OnBoardingPage(),
  ),
  GetPage(
    name: AppRoutes.notifications,
    transition: Transition.downToUp,
    page: () => NotificationPage(),
  ),
  GetPage(
    name: AppRoutes.propertyScreen,
    transition: Transition.downToUp,
    page: () => PropertyScreen(),
  ),
  GetPage(
    name: AppRoutes.favorites,
    transition: Transition.downToUp,
    page: () => const FavoritePage(),
  ),
  GetPage(
    name: AppRoutes.settings,
    transition: Transition.downToUp,
    page: () => const FavoritePage(),
  ),
  GetPage(
    name: AppRoutes.profileScreen,
    transition: Transition.circularReveal,
    page: () => ProfileScreen(),
  ),
  GetPage(
    name: AppRoutes.officeScreen,
    transition: Transition.leftToRight,
    page: () => OfficePage(),
  ),
  GetPage(
    name: AppRoutes.categotyScreen,
    transition: Transition.rightToLeftWithFade,
    page: () => CategoryScreen(),
  ),
  GetPage(
    name: AppRoutes.advertisingScreen,
    transition: Transition.downToUp,
    page: () => AdvertiingScreen(),
  ),
  GetPage(
    name: AppRoutes.addPropertyScreen,
    transition: Transition.circularReveal,
    page: () => AddPropertyScreen(),
  ),
  GetPage(
    name: AppRoutes.searchScreen,
    transition: Transition.leftToRightWithFade,
    page: () => SearchScreen(),
  ),
  GetPage(
    name: AppRoutes.about,
    transition: Transition.circularReveal,
    page: () => const AboutScreen(),
  ),
  GetPage(name: AppRoutes.highlights, page: () => const HighLightsScreen())
];
