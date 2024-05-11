import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:podcast/screens/2_popular_show/popular_show.dart';
import 'package:podcast/utils/assets/image_directions.dart';
import 'package:podcast/utils/colors/text_colors.dart';
import 'package:podcast/utils/extension/sized_box.dart';
import 'package:podcast/utils/fonts/styles.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: 40.0.h,
            bottom: 20.0.h,
            left: 30.w,
            right: 30.w,
          ),
          child: Column(
            children: [
              Container(
                width: double.infinity.w,
                height: 470.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30.r),
                      topLeft: Radius.circular(30.r),
                      bottomLeft: Radius.circular(30.r),
                      bottomRight: Radius.circular(100.r)),
                  image: const DecorationImage(
                    image: AssetImage(
                      Assets.imageGroot,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ZoomTapAnimation(
                      onTap: () {},
                      child: Container(
                        height: 70.h,
                        width: 70.w,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xff7d6bea),
                              blurRadius: 20.r,
                            ),
                          ],
                          color: const Color(0xff7d6bea),
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Icon(
                            Icons.play_arrow_rounded,
                            size: 40.sp,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              30.height(),
              Text(
                'Podcast',
                style: GoogleFonts.openSans(
                  color: TextColors.primaryColor,
                  fontSize: 27.sp,
                  fontWeight: FontWeight.w900,
                ),
              ),
              6.height(),
              Text(
                'Listen Your Favorite Podcast',
                style: AppTextStyles.mainBold,
              ),
              Text(
                'Anywhere, Anytime',
                style: AppTextStyles.mainBold,
              ),
              30.height(),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) {
                        return PopularShow();
                      },
                    ),
                  );
                },
                child: Ink(
                  width: double.infinity,
                  height: 65.w,
                  decoration: BoxDecoration(
                    color: const Color(0xff7d6bea),
                    borderRadius: BorderRadius.circular(25.r),
                  ),
                  child: Center(
                    child: Text(
                      'Log in',
                      style: GoogleFonts.roboto(
                        fontSize: 16.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
              ),
              20.height(),
              ZoomTapAnimation(
                onTap: () {},
                child: Text(
                  'Sign up',
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: const Color(0xFF7d6bea),
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
