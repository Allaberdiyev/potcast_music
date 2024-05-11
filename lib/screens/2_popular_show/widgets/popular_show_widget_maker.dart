import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:podcast/utils/colors/text_colors.dart';
import 'package:podcast/utils/extension/sized_box.dart';
import 'package:podcast/utils/fonts/styles.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class PopularShowWidget extends StatelessWidget {
  final dynamic imageDirection;
  final String podcastName;
  final String podcastType;

  PopularShowWidget({
    super.key,
    required this.imageDirection,
    required this.podcastName,
    required this.podcastType,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30.h),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 90.w,
                height: 70.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18.r),
                  image: DecorationImage(
                    image: AssetImage(imageDirection),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              10.width(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    podcastName,
                    style: GoogleFonts.openSans(
                      color: TextColors.primaryColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 16.sp,
                    ),
                  ),
                  Text(podcastType, style: AppTextStyles.mainBold),
                ],
              ),
            ],
          ),
          ZoomTapAnimation(
            onTap: () {},
            child: Container(
              width: 28.w,
              height: 28.h,
              padding: EdgeInsets.all(6.sp),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                  width: 1.w,
                ),
              ),
              child: Image.asset('assets/icons/page_2/play.png'),
            ),
          ),
        ],
      ),
    );
  }
}
