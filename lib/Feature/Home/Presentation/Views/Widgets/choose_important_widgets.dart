import 'package:flutter/material.dart';
import 'package:to_do_app/Feature/Home/Data/Repositories/Models/note_model.dart';
import '../../../../../Core/Utils/assets_data.dart';
import 'choose_important_widgets_items.dart';

class ChooseImportantWidgets extends StatefulWidget
{
  const ChooseImportantWidgets({super.key, required this.noteModel,});
  final NoteModel noteModel;

  @override
  State<ChooseImportantWidgets> createState() => _ChooseImportantWidgetsState();
}

class _ChooseImportantWidgetsState extends State<ChooseImportantWidgets>
{
  int chosenWidgetIndex = -1;

  @override
  Widget build(BuildContext context)
  {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(4, (index) => ChooseImportantWidgetsItems(
          index: index,
          noteModel: widget.noteModel,
          chosenWidgetIndex: chosenWidgetIndex,
          onPressed: () => setState(()
          {
            chosenWidgetIndex = index;
            widget.noteModel.subTitle = AssetsData.importantTitles[chosenWidgetIndex];
          }),
        )),
      ),
    );
  }
}