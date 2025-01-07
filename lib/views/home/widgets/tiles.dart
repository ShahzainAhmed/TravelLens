import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:travel_lens/models/tile_model.dart';
import 'package:travel_lens/resources/app_assets.dart';
import 'package:travel_lens/resources/app_colors.dart';
import 'package:travel_lens/resources/app_typography.dart';

class LargeTiles extends StatelessWidget {
  final VoidCallback onTap;
  final TileModel tileModel;
  const LargeTiles({
    super.key,
    required this.tileModel,
    required this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        width: 200.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.r),
          image: DecorationImage(
            image: AssetImage(tileModel.image),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              decoration: BoxDecoration(
                color: AppColors.kWhiteColor,
                borderRadius: BorderRadius.circular(10.r),
              ),
              height: 50.h,
              width: Get.width,
              child: ListTile(
                title: Text(
                  tileModel.title,
                  style: AppTypography.kBold14
                      .copyWith(color: AppColors.kBlackColor),
                ),
                subtitle: Text(
                  tileModel.subtitle,
                  style: AppTypography.kMedium12.copyWith(
                    color: AppColors.kDarkGreyColor.withOpacity(0.6),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
