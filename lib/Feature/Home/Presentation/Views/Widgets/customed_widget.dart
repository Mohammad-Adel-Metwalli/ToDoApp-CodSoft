import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/Utils/constant_colors.dart';

class CustomedWidget extends StatelessWidget
{
  const CustomedWidget({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      height: 8.h,
      width: 150.w,
      decoration: BoxDecoration(
        color: green.shade200,
        borderRadius: BorderRadius.circular(25),
      ),
    );
  }
}