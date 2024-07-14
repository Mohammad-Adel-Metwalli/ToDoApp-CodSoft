import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import '../../../../Home/Data/Repositories/Models/note_model.dart';
import '../../../../Home/Presentation/Views/Widgets/customed_show_modal_bottom_sheet.dart';
import 'notes_list_view_items_body.dart';

class NotesListViewItems extends StatelessWidget
{
  const NotesListViewItems({super.key, required this.allNotes, required this.index,});
  final List<NoteModel> allNotes;
  final int index;

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150.h,
        width: 150.w,
        decoration: BoxDecoration(
          color: green.shade200.withOpacity(0.35),
          borderRadius: BorderRadius.circular(25),
        ),

        child: InkWell(
          onTap: () => customedShowModalBottomSheet(context, type: 'Edit', note: allNotes[index]),
          splashColor: grey.withOpacity(0.3),
          borderRadius: BorderRadius.circular(25),
          child: NotesListViewItemsBody(allNotes: allNotes, index: index),
        ),
      ),
    );
  }
}