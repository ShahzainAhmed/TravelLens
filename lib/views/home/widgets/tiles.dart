import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:travel_lens/models/tile_model.dart';
import 'package:travel_lens/resources/app_colors.dart';
import 'package:travel_lens/resources/app_typography.dart';

class ProductTile extends StatelessWidget {
  final VoidCallback onTap;
  final ProductTileModel productTileModel;
  const ProductTile({
    super.key,
    required this.productTileModel,
    required this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: AppColors.kDarkGreyColor.withOpacity(0.3),
              // spreadRadius: 1,
              blurRadius: 3,
              offset: const Offset(0, 2),
            ),
          ],
          color: const Color(0xffeaeaea),
          borderRadius: BorderRadius.circular(18.r),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(productTileModel.image, height: 75.h),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
              height: 40.h,
              width: Get.width,
              decoration: BoxDecoration(
                color: AppColors.kWhiteColor,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    productTileModel.name,
                    style: AppTypography.kBold10
                        .copyWith(color: AppColors.kBlackColor),
                  ),
                  Text(
                    "PKR ${productTileModel.price}",
                    style: AppTypography.kBold10.copyWith(
                      color: AppColors.kGreyColor.withOpacity(0.5),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
