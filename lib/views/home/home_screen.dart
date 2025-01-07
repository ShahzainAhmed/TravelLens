import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:motorbike_app/models/tile_model.dart';
import 'package:motorbike_app/resources/app_colors.dart';
import 'package:motorbike_app/resources/app_typography.dart';
import 'package:motorbike_app/routes/app_routes.dart';
import 'package:motorbike_app/views/home/widgets/banner.dart';
import 'package:motorbike_app/views/home/widgets/tiles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text("Home", style: AppTypography.kLight16),
          leading: const Icon(Icons.menu),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 20.w),
              child: const Icon(CupertinoIcons.search,
                  color: AppColors.kBlackColor),
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 0.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10.h),
                FadeInUp(
                  controller: (controller) => controller = controller,
                  delay: const Duration(milliseconds: 300),
                  child: AnimatedTextKit(
                    repeatForever: false,
                    isRepeatingAnimation: false,
                    animatedTexts: [
                      TyperAnimatedText(
                        "Hi, Shahzain Ahmed!",
                        speed: const Duration(milliseconds: 100),
                        textStyle: AppTypography.kBold24
                            .copyWith(color: AppColors.kGreyColor),
                      ),
                    ],
                  ),
                ),
                FadeInUp(
                  controller: (controller) => controller = controller,
                  delay: const Duration(milliseconds: 400),
                  child: Text(
                    "Find your favourite bike here...",
                    style: AppTypography.kMedium14
                        .copyWith(color: AppColors.kGreyColor.withOpacity(0.4)),
                  ),
                ),
                SizedBox(height: 20.h),
                FadeInUp(
                  controller: (controller) => controller = controller,
                  delay: const Duration(milliseconds: 400),
                  child: const PromotionalBanner(),
                ),
                SizedBox(height: 20.h),
                FadeInUp(
                  controller: (controller) => controller = controller,
                  delay: const Duration(milliseconds: 500),
                  child: Text(
                    "The most searched bikes",
                    style: AppTypography.kBold18
                        .copyWith(color: AppColors.kGreyColor),
                  ),
                ),
                SizedBox(height: 20.h),
                GridView.builder(
                  physics: const ClampingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: tileModelList.length,
                  scrollDirection: Axis.vertical,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 200,
                    crossAxisCount: 2,
                    crossAxisSpacing: 20.w,
                    mainAxisSpacing: 30.h,
                  ),
                  itemBuilder: (context, index) {
                    return FadeInUp(
                      controller: (controller) => controller = controller,
                      delay: const Duration(milliseconds: 600),
                      child: ProductTile(
                        productTileModel: tileModelList[index],
                        onTap: () => Get.toNamed(AppRoutes.detailScreen,
                            arguments: tileModelList[index]),
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ));
  }
}
