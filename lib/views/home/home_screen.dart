import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:travel_lens/models/tile_model.dart';
import 'package:travel_lens/resources/app_colors.dart';
import 'package:travel_lens/resources/app_typography.dart';
import 'package:travel_lens/routes/app_routes.dart';
import 'package:travel_lens/views/home/widgets/bottom_navbar_widget.dart';
import 'package:travel_lens/views/home/widgets/small_tiles.dart';
import 'package:travel_lens/views/home/widgets/tabbar_widget.dart';
import 'package:travel_lens/views/home/widgets/large_tiles.dart';

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
        length: 5,
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
                physics: const BouncingScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                separatorBuilder: (context, index) => SizedBox(width: 14.w),
                scrollDirection: Axis.horizontal,
                itemCount: tileModelList.length,
                itemBuilder: (context, index) {
                  return LargeTiles(
                    tileModel: tileModelList[index],
                    onTap: () {
                      Get.toNamed(
                        AppRoutes.detailScreen,
                        arguments: tileModelList[index],
                      );
                    },
                  );
                },
              ),
            ),
            SizedBox(height: 30.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Text(
                "Top Destinations",
                style: AppTypography.kBold20,
              ),
            ),
            SizedBox(height: 10.h),
            SizedBox(
              height: 65.h,
              width: Get.width,
              child: ListView.separated(
                itemCount: tileModelList.length,
                physics: const BouncingScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => SizedBox(width: 14.w),
                itemBuilder: (context, index) {
                  return SmallTiles(
                    tileModel: tileModelList.reversed.toList()[index],
                    onTap: () {
                      Get.toNamed(
                        AppRoutes.detailScreen,
                        arguments: tileModelList.reversed.toList()[index],
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavbarWidget(),
    );
  }
}

/* 
When you call the reversed property on a list in Dart, it does not return a new list but rather returns a ReversedListIterable. This is a lazy iterable that allows iterating over the elements of the original list in reverse order without creating a new list in memory.

Why toList() is Needed
The reversed property alone doesn't produce an actual list but an iterable. If you want to access elements by index (like tileModelList.reversed[index]), you must first convert the reversed iterable back to a list using .toList(). Without this conversion, index cannot be used directly on the ReversedListIterable.

1) myList.reversed: Produces an iterable that lazily iterates over the elements in reverse order. It's not a list.
2) reversedIterable.toList(): Creates a new list containing the reversed elements.
 */