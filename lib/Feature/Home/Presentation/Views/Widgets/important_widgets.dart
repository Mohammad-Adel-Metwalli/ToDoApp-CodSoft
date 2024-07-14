import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import 'important_widgets_body.dart';

class ImportantWidgets extends StatelessWidget
{
  const ImportantWidgets({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      height: 300.h,
      width: 400.w,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: grey.shade50, width: 3.5),
      ),

      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 5.h),
        child: const ImportantWidgetsBody(),
      ),
    );
  }
}