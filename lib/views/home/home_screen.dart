import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:travel_lens/models/tile_model.dart';
import 'package:travel_lens/resources/app_colors.dart';
import 'package:travel_lens/resources/app_typography.dart';
import 'package:travel_lens/views/home/widgets/tabbar_widget.dart';
import 'package:travel_lens/views/home/widgets/tiles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        automaticallyImplyLeading: false,
        titleSpacing: 20.w,
        title: Text("Discover", style: AppTypography.kBold22),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.w),
            child: const Icon(
              CupertinoIcons.search,
              color: AppColors.kBlackColor,
            ),
          ),
        ],
      ),
      body: DefaultTabController(
        length: 3,
        child: Padding(
          padding: EdgeInsets.only(left: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10.h),
              const TabbarWidget(),
              SizedBox(height: 26.h),
              SizedBox(
                height: 300.h,
                width: Get.width,
                child: ListView.separated(
                  padding: EdgeInsets.only(right: 20.w),
                  separatorBuilder: (context, index) => SizedBox(width: 10.w),
                  scrollDirection: Axis.horizontal,
                  itemCount: tileModelList.length,
                  itemBuilder: (context, index) {
                    return LargeTiles(
                      tileModel: tileModelList[index],
                      onTap: () {},
                    );
                  },
                ),
              ),
              SizedBox(height: 30.h),
              Text(
                "Top Destinations",
                style: AppTypography.kBold20,
              ),
              SizedBox(height: 10.h),
              Container(
                height: 70.h,
                width: 130.w,
                decoration: BoxDecoration(
                  color: AppColors.kDarkGreyColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(20.r),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
