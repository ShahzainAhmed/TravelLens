import 'package:bounce/bounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:travel_lens/resources/app_assets.dart';
import 'package:travel_lens/resources/app_colors.dart';
import 'package:travel_lens/resources/app_typography.dart';
import 'package:travel_lens/routes/app_routes.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kOrangeColor,
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppAssets.kOnboarding),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(bottom: 80.h, top: 120.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Explore Your \nFavorite Journey",
                style: AppTypography.kExtraBold30.copyWith(
                    color: AppColors.kWhiteColor, height: 0, wordSpacing: 0),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 12.h),
              Text(
                "Let's Make Our Life Better",
                style: AppTypography.kMedium16.copyWith(
                    color: AppColors.kWhiteColor, height: 0, wordSpacing: 0),
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              Container(
                height: 160.h,
                width: 85.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.r),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      AppColors.kSmokeColor.withOpacity(0.0),
                      AppColors.kSmokeColor,
                    ],
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(bottom: 6.h, top: 34.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.keyboard_double_arrow_up_sharp,
                        size: 50,
                        color: AppColors.kWhiteColor.withOpacity(0.9),
                      ),
                      Bounce(
                        onTap: () => Get.toNamed(AppRoutes.homescreen),
                        child: CircleAvatar(
                          radius: 36.r,
                          backgroundColor: AppColors.kWhiteColor,
                          child: Text("Go", style: AppTypography.kMedium22),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
