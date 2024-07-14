import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:to_do_app/Feature/Home/Presentation/Managers/tasks_notifier.dart';

class CustomedPercentIndicator extends StatefulWidget
{
  const CustomedPercentIndicator({super.key,});

  @override
  State<CustomedPercentIndicator> createState() => _CustomedPercentIndicatorState();
}

class _CustomedPercentIndicatorState extends State<CustomedPercentIndicator>
{
  @override
  Widget build(BuildContext context)
  {
    setState(() {});
    return Consumer<TasksNotifier>(
      builder: (context, notifier, child)
      {
        return CircularPercentIndicator(
          radius: 15.h,
          percent: notifier.allFinishedTasksToday / notifier.allTasksToday > 0.0 ? notifier.allFinishedTasksToday / notifier.allTasksToday : 0.0,
          progressColor: blueAccent,
          circularStrokeCap: CircularStrokeCap.round,
          backgroundColor: blueAccent.shade100.withOpacity(0.5),
        );
      },
    );
  }
}