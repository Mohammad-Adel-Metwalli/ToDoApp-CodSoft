import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/Feature/Home/Presentation/Managers/tasks_notifier.dart';
import 'customed_grid_view.dart';
import 'customed_home_app_bar.dart';
import 'important_widgets.dart';

class HomeViewBody extends StatefulWidget
{
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody>
{
  @override
  Widget build(BuildContext context)
  {
    return Consumer<TasksNotifier>(
      builder: (context, notifier, child) => RefreshIndicator(
        onRefresh: () async
        {
          notifier.allTasksTodayNotifier();
          notifier.allFinishedTasksTodayNotifier();
          notifier.allUpcomingTasksNotifier();
          notifier.allPersonalTasksNotifier();
          notifier.allWorkTasksNotifier();
          notifier.allLearningTasksNotifier();
          notifier.allShoppingTasksNotifier();
        },
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),

                FadeInDownBig(child: const CustomedHomeAppBar()),

                SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),

                FadeInRightBig(child: const ImportantWidgets()),

                FadeInUpBig(child: const CustomedGridView()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}