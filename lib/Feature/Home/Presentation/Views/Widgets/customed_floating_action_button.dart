import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:to_do_app/Core/Utils/assets_data.dart';
import 'package:to_do_app/Feature/Home/Data/Repositories/Models/note_model.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import 'customed_show_modal_bottom_sheet.dart';

class CustomedFloatingActionButton extends StatelessWidget
{
  const CustomedFloatingActionButton({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return GestureDetector(
      onTap: () => customedShowModalBottomSheet(context, type: '', note: NoteModel(title: '', subTitle: '', duration: '', date: '', color: 0, isImportant: false, isDone: false)),

      child: Container(
        height: 60.h,
        width: 60.w,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: AssetsData.listOfGradientColorsOfGridView[2]),
          shape: BoxShape.circle,
        ),

        child: Center(child: Icon(Icons.add_rounded, color: white, size: 35.h, fill: 1)),
      ),
    );
  }
}