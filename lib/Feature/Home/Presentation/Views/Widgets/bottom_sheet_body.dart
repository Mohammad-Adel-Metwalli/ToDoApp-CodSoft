import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do_app/Feature/Home/Data/Repositories/Models/note_model.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import '../../../../../Core/Utils/styles.dart';
import 'bottom_sheet_body_items.dart';

class BottomSheetBody extends StatelessWidget
{
  const BottomSheetBody({super.key, required this.type, required this.note,});
  final NoteModel note;
  final String type;

  @override
  Widget build(BuildContext context)
  {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.65,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: white,
        borderRadius: Styles.customedBorderRadius,
      ),

      child: BottomSheetBodyItems(type: type, note: note),
    );
  }
}