import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import '../../../../../Core/Utils/styles.dart';
import 'add_note_button_body.dart';

class AddNoteButton extends StatelessWidget
{
  const AddNoteButton({super.key, this.onPressed,});
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: MaterialButton(
        height: 75.h,
        minWidth: 400.w,
        onPressed: onPressed,
        color: green.shade200,
        splashColor: white.withOpacity(0.3),
        shape: RoundedRectangleBorder(borderRadius: Styles.roundedCornersStyle),

        child: const AddNoteButtonBody(),
      ),
    );
  }
}