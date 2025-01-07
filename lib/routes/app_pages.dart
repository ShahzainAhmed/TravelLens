import 'package:get/get.dart';
import 'package:travel_lens/routes/app_routes.dart';
import 'package:travel_lens/views/detail_screen/detail_screen.dart';
import 'package:travel_lens/views/home/home_screen.dart';
import 'package:travel_lens/views/onboarding/onboarding_screen.dart';

class AppPages {
  AppPages._(); // private
  static var allPages = [
    GetPage(
      name: AppRoutes.homescreen,
      page: () => const HomeScreen(),
    ),
    GetPage(
      name: AppRoutes.onboarding,
      page: () => const OnboardingScreen(),
    ),
    GetPage(
      name: AppRoutes.detailScreen,
      page: () => const DetailScreen(),
    )
  ];
}
