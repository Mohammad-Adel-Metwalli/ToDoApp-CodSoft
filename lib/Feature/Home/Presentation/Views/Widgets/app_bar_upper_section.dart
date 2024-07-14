import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/Utils/constant_colors.dart';

class AppBarUpperSection extends StatelessWidget
{
  const AppBarUpperSection({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children: [
        SizedBox(width: MediaQuery.sizeOf(context).width * 0.035),

        Text('lists', style: TextStyle(color: black, fontSize: 30.sp, fontWeight: FontWeight.bold)),

        SizedBox(width: MediaQuery.sizeOf(context).width * 0.58),

        IconButton(
          onPressed: (){},
          icon: Icon(CupertinoIcons.search, color: black, size: 30.h, fill: 1),
        ),

        const CircleAvatar(
          backgroundImage: AssetImage('Assets/Images/user-logo.png'),
        ),
      ],
    );
  }
}