import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/Utils/constant_colors.dart';

class CustomedDivider extends StatelessWidget
{
  const CustomedDivider({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      height: 3.h,
      width: 400.w,
      color: blueAccent.shade100.withOpacity(0.1),
    );
  }
}