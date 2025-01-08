import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:travel_lens/models/tile_model.dart';
import 'package:travel_lens/resources/app_colors.dart';
import 'package:travel_lens/resources/app_typography.dart';
import 'package:travel_lens/views/detail_screen/widget/bottom_sheet_widget.dart';
import 'package:travel_lens/views/detail_screen/widget/image_container.dart';
import 'package:travel_lens/views/detail_screen/widget/like_button.dart';
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
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: false,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 24,
                backgroundColor: AppColors.kWhiteColor.withOpacity(0.7),
                child: IconButton(
                  onPressed: () => Get.back(),
                  icon: const Icon(Icons.arrow_back_ios_new),
                ),
              ),
              CircleAvatar(
                backgroundColor: AppColors.kWhiteColor.withOpacity(0.7),
                radius: 24,
                child: const FavoriteButton(),
              )
            ],
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ImageContainer(tileModel: tileModel),
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
