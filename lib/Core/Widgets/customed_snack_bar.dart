import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import '../Utils/constant_colors.dart';
import '../Utils/styles.dart';

SnackBar customedSnackBar({required BuildContext context, required String type, required bool modify}) => SnackBar(
  elevation: 50.h,
  backgroundColor: type == 'Success' ? green : red,
  duration: const Duration(seconds: 4),
  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
  content: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(type == 'Success' ? Bootstrap.check_circle_fill : Icons.cancel_rounded, color: white),

      SizedBox(width: MediaQuery.sizeOf(context).width * 0.02),

      Text(modify ? (type == 'Success' ? 'Task has been edited' : 'Task isn\'t edited') : (type == 'Success' ? 'Task has been added' : 'Task isn\'t added'), style: Styles.formFieldTextWhiteStyle),
    ],
  ),
);