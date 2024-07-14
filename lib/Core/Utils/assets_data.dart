import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'constant_colors.dart';

abstract class AssetsData
{
  static final List<List<Color>> listOfGradientColorsOfGridView = [
    [
      blueAccent,
      blueAccent.shade100,
    ],

    [
      purple.shade100,
      pink.shade100,
    ],

    [
      blue,
      green.shade200,
    ],

    [
      pink.shade200,
      pink.shade100,
    ],
  ];

  static final Map<int, List<dynamic>> widgetsAndTitlesOfGridView = {
    0: [
      Icon(HeroIcons.user, color: white, size: 30.h, fill: 1),
      'Personal',
    ],
    1: [
      Icon(Iconsax.edit_2_bold, color: white, size: 30.h, fill: 1),
      'Learning',
    ],
    2: [
      Icon(Icons.work_rounded, color: white, size: 30.h, fill: 1),
      'Work',
    ],
    3: [
      Icon(HeroIcons.shopping_bag, color: white, size: 30.h, fill: 1),
      'Shopping',
    ],
  };

  static final List<String> importantTitles = [
    'Personal',
    'Learning',
    'Work',
    'Shopping',
  ];

  static final Map<String, int> importantTitlesIndexes = {
    'Personal': 0,
    'Learning': 1,
    'Work': 2,
    'Shopping': 3,
  };

  static DateTime nowTime = DateTime.now();
  static String nowMonth = nowTime.month < 10 ? '0${nowTime.month}' : '${nowTime.month}';
  static final String currentDate = '${nowTime.year}-$nowMonth-${nowTime.day}';
}