import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/Utils/constant_colors.dart';

class CustomedListTile extends StatelessWidget
{
  const CustomedListTile({super.key, required this.title, required this.subTitle,});
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: TextStyle(color: blueAccent, fontWeight: FontWeight.bold, fontSize: 25.sp)),
        Text(subTitle, style: TextStyle(color: grey, fontSize: 18.sp)),
      ],
    );
  }
}