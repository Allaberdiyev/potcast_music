import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IconMaker extends StatelessWidget {
  final dynamic icoPath;

  const IconMaker({super.key, required this.icoPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.sp),
      height: 23.h,
      width: 23.w,
      child: Image.asset(icoPath),
    );
  }
}
