import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:travel_lens/resources/app_assets.dart';
import 'package:travel_lens/resources/app_colors.dart';
import 'package:travel_lens/resources/app_typography.dart';

class PromotionalBanner extends StatelessWidget {
  const PromotionalBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
      height: 124.h,
      width: Get.width,
      decoration: BoxDecoration(
        color: AppColors.kDarkGreyColor,
        borderRadius: BorderRadius.circular(18.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Explore Latest",
                style: AppTypography.kBold16
                    .copyWith(color: AppColors.kWhiteColor),
              ),
              SizedBox(height: 5.h),
              Text(
                "Bikes with prices",
                style: AppTypography.kLight12
                    .copyWith(color: AppColors.kWhiteColor),
              ),
              SizedBox(height: 10.h),
              Container(
                height: 24.h,
                width: 80.w,
                decoration: BoxDecoration(
                  color: AppColors.kWhiteColor,
                  borderRadius: BorderRadius.circular(50.r),
                ),
                child: Center(
                  child: Text(
                    "Explore",
                    style: AppTypography.kExtraBold10
                        .copyWith(color: AppColors.kDarkGreyColor),
                  ),
                ),
              ),
            ],
          ),
          // Image.asset(
          //   AppAssets.kBike,
          //   height: 100.h,
          //   fit: BoxFit.cover,
          // )
        ],
      ),
    );
  }
}
