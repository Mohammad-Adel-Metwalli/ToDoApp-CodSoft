import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:to_do_app/Core/Utils/constant_colors.dart';
import '../../../../../Core/Utils/assets_data.dart';
import 'days_list_view_items_body.dart';

class DaysListViewItems extends StatelessWidget
{
  const DaysListViewItems({super.key, required this.dayName, required this.dayNumber,});
  final String dayName;
  final int dayNumber;

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      child: Container(
        height: 100.h,
        width: 70.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            gradient: LinearGradient(
              colors: dayNumber == DateTime.now().day ? AssetsData.listOfGradientColorsOfGridView[2] : [white, white],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
            )
        ),

        child: DaysListViewItemsBody(dayName: dayName, dayNumber: dayNumber),
      ),
    );
  }
}