import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:to_do_app/Feature/Home/Data/Repositories/Models/note_model.dart';
import '../../../../../Core/Utils/assets_data.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import '../../../../../Core/Utils/styles.dart';

class ChooseImportantWidgetsItems extends StatefulWidget
{
  const ChooseImportantWidgetsItems({super.key, required this.index, required this.noteModel, this.onPressed, this.chosenWidgetIndex = -1,});
  final void Function()? onPressed;
   final int chosenWidgetIndex;
  final NoteModel noteModel;
  final int index;

  @override
  State<ChooseImportantWidgetsItems> createState() => _ChooseImportantWidgetsItemsState();
}

class _ChooseImportantWidgetsItemsState extends State<ChooseImportantWidgetsItems>
{
  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: MaterialButton(
        height: 50.h,
        color: widget.chosenWidgetIndex == widget.index ? blueAccent.shade400 : white,
        minWidth: 150.w,
        onPressed: widget.onPressed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
          side: BorderSide(color: widget.chosenWidgetIndex == widget.index ? Colors.transparent : blueAccent.shade400, width: 3.5),
        ),

        child: Center(child: Text(AssetsData.importantTitles[widget.index], style: widget.chosenWidgetIndex == widget.index ? Styles.formFieldTextWhiteStyle : Styles.formFieldTextStyle)),
      ),
    );
  }
}