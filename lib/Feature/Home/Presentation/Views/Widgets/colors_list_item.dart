import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/Utils/assets_data.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import '../../../Data/Repositories/Models/note_model.dart';

class ColorsListItem extends StatefulWidget
{
  const ColorsListItem({super.key, required this.index, required this.noteModel, required this.chosenColorIndex,});
  final int chosenColorIndex;
  final NoteModel noteModel;
  final int index;

  @override
  State<ColorsListItem> createState() => _ColorsListItemState();
}

class _ColorsListItemState extends State<ColorsListItem>
{
  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      child: Container(
        height: 75.h,
        width: 75.w,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: widget.index == widget.chosenColorIndex ? yellow : Colors.transparent, width: 5),
          gradient: LinearGradient(
            colors: AssetsData.listOfGradientColorsOfGridView[widget.index],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          ),
        ),
      ),
    );
  }
}