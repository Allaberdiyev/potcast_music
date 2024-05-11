import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class ButtonMaker extends StatelessWidget {
  String text;
  bool isSelected;
  Widget? nextPageName;

  ButtonMaker({
    super.key,
    required this.text,
    required this.isSelected,
    this.nextPageName,
  });

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      onTap: () {
        if (nextPageName != null) {
          Navigator.push(
            context,
            CupertinoPageRoute(
              builder: (context) {
                return nextPageName!;
              },
            ),
          );
        }
      },
      child: Container(
        padding: EdgeInsets.only(
          left: isSelected == true ? 25.w : 35.w,
          right: isSelected == true ? 25.w : 35.w,
          top: 10.h,
          bottom: 10.h,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14.r),
          color: isSelected == true
              ? const Color(0xff7d6bea)
              : Colors.grey.withOpacity(0.15),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
            color: isSelected == true ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
