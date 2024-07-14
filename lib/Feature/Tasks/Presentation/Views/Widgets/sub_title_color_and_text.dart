import 'package:flutter/material.dart';
import 'package:to_do_app/Feature/Tasks/Presentation/Views/Widgets/sub_title_color.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import '../../../../Home/Data/Repositories/Models/note_model.dart';

class SubTitleColorAndTextAndDate extends StatelessWidget
{
  const SubTitleColorAndTextAndDate({super.key, required this.allNotes, required this.index,});
  final List<NoteModel> allNotes;
  final int index;

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children: [
        SubTitleColor(allNotes: allNotes, index: index),

        SizedBox(width: MediaQuery.sizeOf(context).width * 0.02),

        Text(allNotes[index].subTitle, style: const TextStyle(color: black, fontWeight: FontWeight.bold)),

        SizedBox(width: MediaQuery.sizeOf(context).width * 0.035),

        Text(allNotes[index].date, style: const TextStyle(color: black, fontWeight: FontWeight.bold)),
      ],
    );
  }
}