import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:travel_lens/resources/app_assets.dart';
import 'package:travel_lens/resources/app_colors.dart';
import 'package:travel_lens/resources/app_typography.dart';
import 'package:travel_lens/routes/app_routes.dart';
import 'package:travel_lens/views/onboarding/widgets/primary_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kOrangeColor,
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 50.w, vertical: 90.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FadeInDown(
                  controller: (controller) => controller = controller,
                  delay: const Duration(milliseconds: 300),
                  child: Text(
                    "Ride into the",
                    style: AppTypography.kExtraLight14
                        .copyWith(color: AppColors.kWhiteColor, height: 1.0),
                  ),
                ),
                AnimatedTextKit(
                  isRepeatingAnimation: false,
                  animatedTexts: [
                    TypewriterAnimatedText(
                      "Future",
                      speed: const Duration(milliseconds: 200),
                      textStyle: AppTypography.kExtraBold56
                          .copyWith(color: AppColors.kWhiteColor, height: 1.2),
                    ),
                  ],
                ),
                const Spacer(),
                FadeInUp(
                  controller: (controller) => controller = controller,
                  delay: const Duration(milliseconds: 300),
                  child: PrimaryButton(
                    onTap: () => Get.toNamed(AppRoutes.homescreen),
                    title: "Explore Collection",
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: -60.w,
            bottom: 150.h,
            child: Image.asset(
              AppAssets.kOnboarding,
              height: 420.h,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
