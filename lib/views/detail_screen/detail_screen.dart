import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:travel_lens/models/tile_model.dart';
import 'package:travel_lens/resources/app_colors.dart';
import 'package:travel_lens/resources/app_typography.dart';
import 'package:travel_lens/views/detail_screen/widget/bottom_sheet_widget.dart';
import 'package:travel_lens/views/detail_screen/widget/specs_widget.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  late TileModel tileModel;

  @override
  void initState() {
    tileModel = Get.arguments;
    super.initState();
  }

  bool animate = true;
  late AnimationController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(50),
            height: Get.height * 0.5,
            width: Get.width,
            decoration: BoxDecoration(
              color: AppColors.kGreyColor,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(70.r),
              ),
              image: DecorationImage(
                image: AssetImage(tileModel.image),
                fit: BoxFit.cover,
              ),
            ),
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
          SizedBox(height: 30.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SpecsWidget(
                  title: "Distance",
                  value: "${tileModel.distance}Km",
                ),
                SpecsWidget(
                  title: "Temp",
                  value: "${tileModel.temp}° C",
                ),
                SpecsWidget(
                  title: "Rating",
                  value: tileModel.rating,
                ),
              ],
            ),
          ),
          SizedBox(height: 20.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Text(
              "Description",
              style: AppTypography.kBold16,
            ),
          ),
          SizedBox(height: 8.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Text(
              tileModel.description,
              style:
                  AppTypography.kLight12.copyWith(color: AppColors.kGreyColor),
            ),
          ),
          BottomSheetWidget(price: "\$${tileModel.price}")
        ],
      ),
    );
  }
}
