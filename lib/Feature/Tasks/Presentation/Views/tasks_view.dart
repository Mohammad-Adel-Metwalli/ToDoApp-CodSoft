import 'package:flutter/material.dart';
import 'package:to_do_app/Core/Utils/constant_colors.dart';
import 'Widgets/tasks_view_body.dart';

class TasksView extends StatelessWidget
{
  const TasksView({super.key, required this.titleAndNotes});
  final Map<dynamic, dynamic> titleAndNotes;

  @override
  Widget build(BuildContext context)
  {
    return SafeArea(
      child: Scaffold(
        backgroundColor: white,
        body: TasksViewBody(titleAndNotes: titleAndNotes),
      ),
    );
  }
}