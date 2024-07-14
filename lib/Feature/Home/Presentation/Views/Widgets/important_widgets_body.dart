import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/Core/Utils/Functions/important_tasks_function.dart';
import 'package:to_do_app/Core/Utils/Functions/retrieve_today_tasks_function.dart';
import 'package:to_do_app/Core/Utils/Functions/upcoming_tasks_function.dart';
import 'package:to_do_app/Core/Utils/constants.dart';
import 'package:to_do_app/Feature/Home/Presentation/Managers/tasks_notifier.dart';
import 'customed_divider.dart';
import 'important_widgets_body_items.dart';

class ImportantWidgetsBody extends StatelessWidget
{
  const ImportantWidgetsBody({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Consumer<TasksNotifier>(
      builder: (context, notifier, child) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () => GoRouter.of(context).push(
              tasksViewPath,
              extra: {
                'title': 'My Day',
                'notes': retrieveTodayTasksFunction(),
              },
            ),

            child: ImportantWidgetsBodyItems(
              icon: Icon(CupertinoIcons.sun_max_fill, color: Colors.blueAccent, size: 30.h, fill: 1),
              title: 'My Day',
              subTitle: notifier.allTasksToday > 1 ? '${notifier.allTasksToday} tasks' : '${notifier.allTasksToday} task',
            ),
          ),

          SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),

          const CustomedDivider(),

          SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),

          GestureDetector(
            onTap: () => GoRouter.of(context).push(
              tasksViewPath,
              extra: {
                'title': 'Upcoming',
                'notes': upcomingTasksFunction(),
              },
            ),

            child: ImportantWidgetsBodyItems(
              icon: Icon(Icons.calendar_month_rounded, color: Colors.blueAccent, size: 30.h, fill: 1),
              title: 'Upcoming',
              subTitle: notifier.allUpcomingTasks > 1 ? '${notifier.allUpcomingTasks} tasks' : '${notifier.allUpcomingTasks} task',
            ),
          ),

          SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),

          const CustomedDivider(),

          SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),

          GestureDetector(
            onTap: () => GoRouter.of(context).push(
              tasksViewPath,
              extra: {
                'title': 'Important',
                'notes': importantTasksFunction(),
              },
            ),

            child: ImportantWidgetsBodyItems(
              icon: Icon(Icons.star_rounded, color: Colors.blueAccent, size: 35.h, fill: 1),
              title: 'Important',
              subTitle: notifier.allImportantTasks > 1 ? '${notifier.allImportantTasks} tasks' : '${notifier.allImportantTasks} task',
            ),
          ),

          SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),
        ],
      ),
    );
  }
}