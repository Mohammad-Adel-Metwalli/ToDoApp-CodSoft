import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/Feature/Home/Presentation/Managers/tasks_notifier.dart';
import '../../../../Home/Data/Repositories/Models/note_model.dart';
import 'customed_labels.dart';
import 'customed_round_check_box.dart';

class NotesListViewItemsBody extends StatefulWidget
{
  const NotesListViewItemsBody({super.key, required this.allNotes, required this.index,});
  final List<NoteModel> allNotes;
  final int index;

  @override
  State<NotesListViewItemsBody> createState() => _NotesListViewItemsBodyState();
}

class _NotesListViewItemsBodyState extends State<NotesListViewItemsBody>
{
  @override
  Widget build(BuildContext context)
  {
    return Center(
      child: Row(
        children: [
          SizedBox(width: MediaQuery.sizeOf(context).width * 0.05),

          Consumer<TasksNotifier>(
            builder: (context, notifier, child) => CustomedRoundCheckBox(
              isSelected: widget.allNotes[widget.index].isDone,
              onChanged: (isSelected)
              {
                widget.allNotes[widget.index].isDone = isSelected!;
                widget.allNotes[widget.index].save();
                notifier.allFinishedTasksTodayNotifier();
                setState(() {});
              },
            ),
          ),

          SizedBox(width: MediaQuery.sizeOf(context).width * 0.05),

          CustomedLabels(allNotes: widget.allNotes, index: widget.index),
        ],
      ),
    );
  }
}