import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:travel_lens/resources/app_colors.dart';
import 'package:travel_lens/routes/app_pages.dart';
import 'package:travel_lens/routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        initialRoute: AppRoutes.onboarding,
        getPages: AppPages.allPages,
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.kBackgroundColor,
          bottomSheetTheme: const BottomSheetThemeData(
            backgroundColor: Colors.transparent,
          ),
          appBarTheme: const AppBarTheme(
            backgroundColor: AppColors.kBackgroundColor,
            surfaceTintColor: AppColors.kBackgroundColor,
          ),
        ),
      ),
    );
  }
}
