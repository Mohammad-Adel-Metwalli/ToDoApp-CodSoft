import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/Core/Utils/assets_data.dart';
import 'package:to_do_app/Core/Utils/constant_colors.dart';
import 'package:to_do_app/Feature/Home/Presentation/Managers/tasks_notifier.dart';

class CustomedGridViewItemBody extends StatefulWidget
{
  const CustomedGridViewItemBody({super.key, required this.index,});
  final int index;

  @override
  State<CustomedGridViewItemBody> createState() => _CustomedGridViewItemBodyState();
}

class _CustomedGridViewItemBodyState extends State<CustomedGridViewItemBody>
{
  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AssetsData.widgetsAndTitlesOfGridView[widget.index]![0],

          SizedBox(height: MediaQuery.sizeOf(context).height * 0.035),

          Text(
            AssetsData.widgetsAndTitlesOfGridView[widget.index]![1],
            style: TextStyle(color: white, fontWeight: FontWeight.bold, fontSize: 20.sp),
          ),

          SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),

          Consumer<TasksNotifier>(
            builder: (context, notifier, child) => Text(
              widget.index == 0 ? '${notifier.allPersonalTasks} ${notifier.allPersonalTasks > 1 ? 'Tasks' : 'Task'}' : (widget.index == 1 ? '${notifier.allLearningTasks} ${notifier.allLearningTasks > 1 ? 'Tasks' : 'Task'}' : (widget.index == 2 ? '${notifier.allWorkTasks} ${notifier.allWorkTasks > 1 ? 'Tasks' : 'Task'}' : '${notifier.allShoppingTasks} ${notifier.allShoppingTasks > 1 ? 'Tasks' : 'Task'}')),
              style: TextStyle(color: white.withOpacity(0.8), fontWeight: FontWeight.w600, fontSize: 15.sp),
            )
          ),
        ],
      ),
    );
  }
}