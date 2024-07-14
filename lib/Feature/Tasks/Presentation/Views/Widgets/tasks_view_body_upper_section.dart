import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../../Core/Utils/constant_colors.dart';

class TasksViewBodyUpperSection extends StatelessWidget
{
  const TasksViewBodyUpperSection({super.key, required this.title,});
  final String title;

  @override
  Widget build(BuildContext context)
  {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          onPressed: () => GoRouter.of(context).pop(),
          icon: Icon(Icons.chevron_left_rounded, size: 40.h, fill: 1),
        ),

        SizedBox(width: MediaQuery.sizeOf(context).width * 0.25),

        Text(title, style: TextStyle(color: black, fontWeight: FontWeight.w700, fontSize: 20.sp)),

        SizedBox(width: MediaQuery.sizeOf(context).width * 0.2),

        const CircleAvatar(
          backgroundImage: AssetImage('Assets/Images/user-logo.png'),
        ),

        SizedBox(width: MediaQuery.sizeOf(context).width * 0.05),
      ],
    );
  }
}