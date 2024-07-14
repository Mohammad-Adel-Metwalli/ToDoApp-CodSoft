import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import '../../../../../Core/Utils/constant_colors.dart';

class EditNoteButtonBody extends StatelessWidget
{
  const EditNoteButtonBody({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(EvaIcons.edit_outline, color: white, size: 30.h, fill: 1),
          SizedBox(width: MediaQuery.sizeOf(context).width * 0.02),
          Text('Edit Note', style: TextStyle(color: white, fontWeight: FontWeight.w700, fontSize: 20.sp))
        ],
      ),
    );
  }
}