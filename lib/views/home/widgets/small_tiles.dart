import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:travel_lens/models/tile_model.dart';
import 'package:travel_lens/resources/app_assets.dart';
import 'package:travel_lens/resources/app_colors.dart';
import 'package:travel_lens/resources/app_typography.dart';
import 'package:travel_lens/views/home/widgets/tabbar_widget.dart';
import 'package:travel_lens/views/home/widgets/tiles.dart';

class SmallTiles extends StatelessWidget {
  final TileModel tileModel;
  const SmallTiles({super.key, required this.tileModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65.h,
      width: 160.w,
      decoration: BoxDecoration(
        color: AppColors.kDarkGreyColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(22.r),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(22.r),
            child: Image.asset(
              tileModel.image,
              fit: BoxFit.cover,
              width: 74.w,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tileModel.title,
                  style: AppTypography.kBold14,
                ),
                Text(
                  "Brazil",
                  style: AppTypography.kLight12.copyWith(
                    color: AppColors.kDarkGreyColor.withOpacity(0.6),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
