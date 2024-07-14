import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'constant_colors.dart';

abstract class Styles
{
  static const customedBorderRadius = BorderRadius.vertical(top: Radius.circular(25));
  static final roundedCornersStyle = BorderRadius.circular(25);
  static OutlineInputBorder formFieldOutlineInputBorder() => OutlineInputBorder(borderRadius: BorderRadius.circular(25), borderSide: const BorderSide(color: purple, width: 3.5));
  static OutlineInputBorder errorFormFieldOutlineInputBorder() => OutlineInputBorder(borderRadius: BorderRadius.circular(25), borderSide: const BorderSide(color: red, width: 3.5));
  static TextStyle errorStyle = TextStyle(color: red, fontSize: 13.sp, fontWeight: FontWeight.bold);
  static TextStyle formFieldTimeAndDateStyle = TextStyle(color: purple, fontWeight: FontWeight.w700, fontSize: 20.sp);
  static TextStyle formFieldTextStyle = TextStyle(color: purple, fontWeight: FontWeight.w700, fontSize: 20.sp);
  static TextStyle formFieldTextWhiteStyle = TextStyle(color: white, fontWeight: FontWeight.w700, fontSize: 20.sp);
}