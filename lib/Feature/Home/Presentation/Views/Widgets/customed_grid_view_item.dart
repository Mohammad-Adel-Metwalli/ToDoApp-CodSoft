import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:to_do_app/Core/Utils/Functions/learning_tasks_function.dart';
import 'package:to_do_app/Core/Utils/Functions/personal_tasks_function.dart';
import 'package:to_do_app/Core/Utils/Functions/shopping_tasks_function.dart';
import 'package:to_do_app/Core/Utils/Functions/work_tasks_function.dart';
import 'package:to_do_app/Core/Utils/constants.dart';
import 'package:to_do_app/Core/Utils/styles.dart';
import '../../../../../Core/Utils/assets_data.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import 'customed_grid_view_item_body.dart';

class CustomedGridViewItem extends StatelessWidget
{
  const CustomedGridViewItem({super.key, required this.index,});
  final int index;

  @override
  Widget build(BuildContext context)
  {
    return InkWell(
      borderRadius: Styles.roundedCornersStyle,
      splashColor: white.withOpacity(0.3),
      onTap: () => GoRouter.of(context).push(
        tasksViewPath,
        extra: {
          'title': AssetsData.importantTitles[index],
          'notes': index == 0 ? personalTasksFunction() : (index == 1 ? learningTasksFunction() : (index == 2 ? workTasksFunction() : shoppingTasksFunction())),
        },
      ),
      child: Ink(
        height: 50.h,
        width: 50.w,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: AssetsData.listOfGradientColorsOfGridView[index],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          ),
          borderRadius: BorderRadius.circular(25),
        ),

        child: CustomedGridViewItemBody(index: index),
      ),
    );
  }
}