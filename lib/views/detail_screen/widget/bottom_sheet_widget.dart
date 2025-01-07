import 'package:bounce/bounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:travel_lens/resources/app_colors.dart';
import 'package:travel_lens/resources/app_typography.dart';

class BottomSheetWidget extends StatelessWidget {
  final Color color;
  const BottomSheetWidget({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: SizedBox(
        height: 45.h,
        width: Get.width,
        child: Bounce(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(100.r),
            ),
            child: Center(
                child: Text(
              "Buy now",
              style:
                  AppTypography.kBold14.copyWith(color: AppColors.kWhiteColor),
            )),
          ),
        ),
      ),
    );
  }
}
