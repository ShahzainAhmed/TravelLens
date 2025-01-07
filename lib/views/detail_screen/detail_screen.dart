import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:travel_lens/models/tile_model.dart';
import 'package:travel_lens/resources/app_colors.dart';
import 'package:travel_lens/resources/app_typography.dart';
import 'package:travel_lens/views/detail_screen/widget/bike_details_card.dart';
import 'package:travel_lens/views/detail_screen/widget/bottom_sheet_widget.dart';
import 'package:travel_lens/views/detail_screen/widget/like_button.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  late ProductTileModel productTileModel;

  @override
  void initState() {
    productTileModel = Get.arguments;
    super.initState();
  }

  bool animate = true;
  late AnimationController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () async {
            setState(() {
              animate = !animate;
            });
            await Future.delayed(const Duration(milliseconds: 700));
            Get.back();
          },
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: const Icon(Icons.share_outlined),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: FadeInUp(
                  animate: animate,
                  controller: (controller) => controller = controller,
                  delay: const Duration(milliseconds: 200),
                  child: Image.asset(
                    productTileModel.image,
                    height: Get.height * 0.24,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: FadeInUp(
                  animate: animate,
                  controller: (controller) => controller = controller,
                  delay: const Duration(milliseconds: 300),
                  child: Text(
                    productTileModel.name,
                    style: AppTypography.kExtraBold20
                        .copyWith(color: AppColors.kGreyColor),
                  ),
                ),
                subtitle: FadeInUp(
                  animate: animate,
                  controller: (controller) => controller = controller,
                  delay: const Duration(milliseconds: 400),
                  child: Text(
                    "By ${productTileModel.manufacturer}",
                    style: AppTypography.kMedium16
                        .copyWith(color: AppColors.kGreyColor.withOpacity(0.4)),
                  ),
                ),
                trailing: FadeInUp(
                  animate: animate,
                  controller: (controller) => controller = controller,
                  delay: const Duration(milliseconds: 500),
                  child: CircleAvatar(
                    radius: 20.r,
                    backgroundColor: productTileModel.color,
                    child: FadeInUp(
                      animate: animate,
                      controller: (controller) => controller = controller,
                      delay: const Duration(milliseconds: 600),
                      child: const FavoriteButton(),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              FadeInUp(
                animate: animate,
                controller: (controller) => controller = controller,
                delay: const Duration(milliseconds: 700),
                child: BikeDetailsCard(productTileModel: productTileModel),
              ),
              SizedBox(height: 26.h),
              FadeInUp(
                animate: animate,
                controller: (controller) => controller = controller,
                delay: const Duration(milliseconds: 800),
                child: Text(
                  "Bike Details",
                  style: AppTypography.kExtraBold16
                      .copyWith(color: AppColors.kGreyColor),
                ),
              ),
              SizedBox(height: 10.h),
              FadeInUp(
                animate: animate,
                controller: (controller) => controller = controller,
                delay: const Duration(milliseconds: 900),
                child: Text(
                  productTileModel.description,
                  style: AppTypography.kMedium12
                      .copyWith(color: AppColors.kGreyColor.withOpacity(0.6)),
                  textAlign: TextAlign.justify,
                ),
              ),
              SizedBox(height: 200.h),
            ],
          ),
        ),
      ),
      bottomSheet: FadeInUp(
        animate: animate,
        controller: (controller) => controller = controller,
        delay: const Duration(milliseconds: 600),
        child: BottomSheetWidget(color: productTileModel.color),
      ),
    );
  }
}
