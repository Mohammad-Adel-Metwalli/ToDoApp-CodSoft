import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/Feature/Home/Presentation/Managers/tasks_notifier.dart';
import 'package:to_do_app/Feature/Tasks/Presentation/Views/Widgets/notes_list_view.dart';
import 'package:to_do_app/Feature/Tasks/Presentation/Views/Widgets/tasks_view_body_upper_section.dart';
import 'days_list_view.dart';

class TasksViewBody extends StatefulWidget
{
  const TasksViewBody({super.key, required this.titleAndNotes});
  final Map<dynamic, dynamic> titleAndNotes;

  @override
  State<TasksViewBody> createState() => _TasksViewBodyState();
}

class _TasksViewBodyState extends State<TasksViewBody>
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
        child: Column(
          children: [
            TasksViewBodyUpperSection(title: widget.titleAndNotes['title']),

            SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),

            widget.titleAndNotes['title'] == 'My Day' ? const DaysListView() : const SizedBox.shrink(),

            widget.titleAndNotes['title'] == 'My Day' ? SizedBox(height: MediaQuery.sizeOf(context).height * 0.02) : const SizedBox.shrink(),

            NotesListView(allNotes: widget.titleAndNotes['notes']!),
          ],
        ),
      ),
    );
  }
}