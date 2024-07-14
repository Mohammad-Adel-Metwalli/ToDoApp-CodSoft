import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:to_do_app/Feature/Tasks/Presentation/Views/Widgets/sub_title_color_and_text.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import '../../../../Home/Data/Repositories/Models/note_model.dart';
import 'duration_and_importance.dart';

class CustomedLabels extends StatelessWidget
{
  const CustomedLabels({super.key, required this.allNotes, required this.index,});
  final List<NoteModel> allNotes;
  final int index;

  @override
  Widget build(BuildContext context)
  {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 300.w,
          child: Text(allNotes[index].title, style: TextStyle(color: blueAccent, fontWeight: FontWeight.bold, fontSize: 25.sp, overflow: TextOverflow.ellipsis)),
        ),

        SizedBox(height: MediaQuery.sizeOf(context).height * 0.001),

        DurationAndImportance(allNotes: allNotes, index: index),

        SizedBox(height: MediaQuery.sizeOf(context).height * 0.001),

        SubTitleColorAndTextAndDate(allNotes: allNotes, index: index),
      ],
    );
  }
}