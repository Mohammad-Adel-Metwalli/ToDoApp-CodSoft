import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/Utils/constant_colors.dart';

class DaysListViewItemsBody extends StatelessWidget
{
  const DaysListViewItemsBody({super.key, required this.dayName, required this.dayNumber,});
  final String dayName;
  final int dayNumber;

  @override
  Widget build(BuildContext context)
  {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(dayName[0], style: TextStyle(color: dayNumber == DateTime.now().day ? white : grey, fontWeight: FontWeight.bold, fontSize: 18.sp)),

          Text(dayNumber.toString(), style: TextStyle(color: dayNumber == DateTime.now().day ? white : grey, fontWeight: FontWeight.bold, fontSize: 18.sp)),
        ],
      ),
    );
  }
}