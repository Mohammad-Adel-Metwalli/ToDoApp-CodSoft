import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/Feature/Home/Presentation/Managers/tasks_notifier.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import 'customed_percent_indicator.dart';

class AppBarLowerSection extends StatefulWidget
{
  const AppBarLowerSection({super.key,});

  @override
  State<AppBarLowerSection> createState() => _AppBarLowerSectionState();
}

class _AppBarLowerSectionState extends State<AppBarLowerSection>
{
  @override
  Widget build(BuildContext context)
  {
    return Row(
      children: [
        SizedBox(width: MediaQuery.sizeOf(context).width * 0.03),

        const CustomedPercentIndicator(),

        SizedBox(width: MediaQuery.sizeOf(context).width * 0.025),

        Text('Today\'s Progress', style: TextStyle(color: blueAccent, fontWeight: FontWeight.w600, fontSize: 15.sp)),

        SizedBox(width: MediaQuery.sizeOf(context).width * 0.02),

        Consumer<TasksNotifier>(
          builder: (context, notifier, child) => Text(notifier.allTasksToday - notifier.allFinishedTasksToday > 1 ? '${notifier.allTasksToday - notifier.allFinishedTasksToday} Tasks left' : '${notifier.allTasksToday - notifier.allFinishedTasksToday} Task left', style: TextStyle(color: grey, fontWeight: FontWeight.w600, fontSize: 13.sp))
        ),
      ],
    );
  }
}