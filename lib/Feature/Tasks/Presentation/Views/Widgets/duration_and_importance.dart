import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/Feature/Home/Presentation/Managers/tasks_notifier.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import '../../../../Home/Data/Repositories/Models/note_model.dart';

class DurationAndImportance extends StatefulWidget
{
  const DurationAndImportance({super.key, required this.allNotes, required this.index,});
  final List<NoteModel> allNotes;
  final int index;

  @override
  State<DurationAndImportance> createState() => _DurationAndImportanceState();
}

class _DurationAndImportanceState extends State<DurationAndImportance>
{
  @override
  Widget build(BuildContext context)
  {
    return Row(
      children: [
        Text(widget.allNotes[widget.index].duration, style: TextStyle(color: black, fontWeight: FontWeight.bold, fontSize: 17.sp)),

        SizedBox(width: MediaQuery.sizeOf(context).width * 0.3),

        Consumer<TasksNotifier>(
          builder: (context, notifier, child) => IconButton(
            iconSize: 30.h,
            onPressed: ()
            {
              widget.allNotes[widget.index].isImportant = true;
              widget.allNotes[widget.index].save();
              notifier.allImportantTasksNotifier();
            },
            icon: Icon(widget.allNotes[widget.index].isImportant ? CupertinoIcons.star_fill : CupertinoIcons.star, color: green),
          ),
        ),
      ],
    );
  }
}