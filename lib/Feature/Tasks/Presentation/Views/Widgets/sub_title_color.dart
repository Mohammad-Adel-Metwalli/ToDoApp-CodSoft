import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/Utils/assets_data.dart';
import '../../../../Home/Data/Repositories/Models/note_model.dart';

class SubTitleColor extends StatelessWidget
{
  const SubTitleColor({super.key, required this.allNotes, required this.index,});
  final List<NoteModel> allNotes;
  final int index;

  @override
  Widget build(BuildContext context)
  {
    return Container(
      height: 20.h,
      width: 20.w,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(colors: AssetsData.listOfGradientColorsOfGridView[allNotes[index].color])
      ),
    );
  }
}