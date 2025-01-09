import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:travel_lens/models/tile_model.dart';
import 'package:travel_lens/resources/app_colors.dart';
import 'package:travel_lens/resources/app_typography.dart';

class ImageContainer extends StatelessWidget {
  final TileModel tileModel;
  const ImageContainer({super.key, required this.tileModel});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Hero(
          tag: tileModel.image,
          child: Container(
            height: Get.height * 0.5,
            width: Get.width,
            decoration: BoxDecoration(
              color: AppColors.kGreyColor,
              borderRadius:
                  BorderRadius.vertical(bottom: Radius.circular(70.r)),
              image: DecorationImage(
                image: AssetImage(tileModel.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Container(
          height: Get.height * 0.5,
          width: Get.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(70.r)),
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.center,
              colors: [
                AppColors.kBlackColor.withValues(alpha: 0.6),
                AppColors.kTransparentColor,
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 50.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                tileModel.title,
                style: AppTypography.kLight24.copyWith(
                  color: AppColors.kWhiteColor,
                ),
              ),
              SizedBox(height: 4.h),
              Row(
                children: [
                  const Icon(
                    Icons.pin_drop,
                    color: AppColors.kWhiteColor,
                    size: 20,
                  ),
                  SizedBox(width: 6.w),
                  Text(
                    tileModel.subtitle,
                    style: AppTypography.kMedium14.copyWith(
                      color: AppColors.kWhiteColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
