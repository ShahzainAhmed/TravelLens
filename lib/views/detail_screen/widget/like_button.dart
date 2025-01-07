import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:motorbike_app/resources/app_colors.dart';

class FavoriteButton extends StatelessWidget {
  const FavoriteButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LikeButton(
      padding: EdgeInsets.zero,
      size: 20,
      circleColor: const CircleColor(
        start: AppColors.kWhiteColor,
        end: AppColors.kWhiteColor,
      ),
      bubblesColor: const BubblesColor(
        dotPrimaryColor: AppColors.kWhiteColor,
        dotSecondaryColor: AppColors.kWhiteColor,
      ),
      likeBuilder: (bool isLiked) {
        return Icon(
          isLiked ? Icons.favorite_rounded : Icons.favorite_outline,
          color: isLiked ? AppColors.kWhiteColor : AppColors.kWhiteColor,
          size: 24,
        );
      },
    );
  }
}
