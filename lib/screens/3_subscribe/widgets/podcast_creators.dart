import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:podcast/utils/colors/text_colors.dart';
import 'package:podcast/utils/extension/sized_box.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class PodcastCreator extends StatelessWidget {
  final dynamic photoPath;
  final String podcastCreatorName;
  final String podcastType;
  final int podcastAmount;
  final bool isSelected;

  PodcastCreator({
    super.key,
    required this.photoPath,
    required this.podcastCreatorName,
    required this.podcastType,
    required this.podcastAmount,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.h),
      width: double.infinity.w,
      child: Row(
        children: [
          Container(
            width: 100.w,
            height: 100.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              color: Colors.red,
              image: DecorationImage(
                image: AssetImage(photoPath),
                fit: BoxFit.fill,
              ),
            ),
          ),
          15.width(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                podcastCreatorName,
                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.w700,
                  fontSize: 14.sp,
                  color: TextColors.primaryColor,
                ),
              ),
              Text(
                podcastType,
                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.w700,
                  fontSize: 14.sp,
                  color: TextColors.primaryColor,
                ),
              ),
              SizedBox(
                width: 184.w,
                child: Row(
                  children: [
                    Text(
                      '$podcastAmount Podcasts',
                      style: TextStyle(
                        fontSize: 11.sp,
                        color: TextColors.secondaryColor,
                      ),
                    ),
                    const Spacer(),
                    ZoomTapAnimation(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.only(
                          left: 20.w,
                          right: 20.w,
                          top: 10.h,
                          bottom: 10.h,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          color: isSelected == true
                              ? const Color(0xff7d6bea)
                              : Colors.grey.withOpacity(0.3),
                        ),
                        child: Center(
                          child: Text(
                            'Subscribe',
                            style: GoogleFonts.openSans(
                              color: isSelected == true
                                  ? Colors.white
                                  : const Color(0xFF1B153B),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
